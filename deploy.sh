#!/usr/bin/env bash

set -euo pipefail

# Produce the website files that GitHub Pages will serve.
flutter build web --release --base-href /

# Keep deployment history separate from the source repository. Flutter recreates
# build/web on every build, so it must never be used as a Git checkout.
deploy_dir="$(mktemp -d "${TMPDIR:-/tmp}/yasser-portfolio-gh-pages.XXXXXX")"
cleanup() {
  git worktree remove --force "$deploy_dir" 2>/dev/null || true
}
trap cleanup EXIT

git fetch origin gh-pages
git worktree add --detach "$deploy_dir" origin/gh-pages

rsync -a --delete --exclude .git build/web/ "$deploy_dir/"

git -C "$deploy_dir" add -A
if git -C "$deploy_dir" diff --cached --quiet; then
  echo "GitHub Pages is already up to date."
  exit 0
fi

git -C "$deploy_dir" commit -m "Deploy Flutter web"
git -C "$deploy_dir" push origin HEAD:gh-pages
