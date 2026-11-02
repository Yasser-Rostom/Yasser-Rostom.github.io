#!/usr/bin/env bash

# Stop immediately on errors, undefined variables, or failed pipeline commands.
set -euo pipefail

# Produce the website files that GitHub Pages will serve.
flutter build web --release --base-href /

# Keep deployment history separate from the source repository. Flutter recreates
# build/web on every build, so it must never be used as a Git checkout.
# Create an isolated temporary directory for the GitHub Pages checkout.
deploy_dir="$(mktemp -d "${TMPDIR:-/tmp}/yasser-portfolio-gh-pages.XXXXXX")"
cleanup() {
  # Remove the temporary checkout even if the script exits early.
  git worktree remove --force "$deploy_dir" 2>/dev/null || true
}

# Run cleanup whenever the script exits.
trap cleanup EXIT

# Refresh the local reference to the remote GitHub Pages branch.
git fetch origin gh-pages

# Check out the current GitHub Pages branch in the temporary directory.
git worktree add --detach "$deploy_dir" origin/gh-pages

# Copy the new web build into the temporary checkout and remove stale files.
rsync -a --delete --exclude .git build/web/ "$deploy_dir/"

# Stage every change in the GitHub Pages checkout.
git -C "$deploy_dir" add -A

# Stop when the generated site is identical to the published version.
if git -C "$deploy_dir" diff --cached --quiet; then
  # Confirm that no deployment was necessary.
  echo "GitHub Pages is already up to date."

  # End successfully; the EXIT trap will remove the temporary checkout.
  exit 0
fi

# Create a deployment commit from the generated site files.
git -C "$deploy_dir" commit -m "Deploy Flutter web"

# Publish the deployment commit to the remote GitHub Pages branch.
git -C "$deploy_dir" push origin HEAD:gh-pages
