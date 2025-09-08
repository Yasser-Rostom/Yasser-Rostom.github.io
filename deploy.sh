#!/bin/bash

# Build Flutter web
flutter build web

# Go to build/web folder
cd build/web

# Initialize git if needed
git init

# Add all files
git add .

# Commit changes
git commit -m "Deploy Flutter Web build"

# Set branch to gh-pages
git branch -M gh-pages

# Add remote (replace with your repo)
git remote add origin https://github.com/Yasser-Rostom/Yasser-Rostom.github.io.git

# Force push to gh-pages
git push -f origin gh-pages

# Go back to project root
cd ../..
