#!/bin/sh

# If a command fails then the deploy stops
set -e

# If user failed to clone with `git clone --recursive blah blah`
printf "\033[0;32mSubmodule Safety Engaged...\033[0m\n"
git submodule sync --recursive && git submodule update --init --recursive
printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

# Build the project.
hugo # if using a theme, replace with `hugo -t <YOURTHEME>`

# Go To Public folder
cd public

# Add changes to git.
git add .

# Commit changes.
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master
printf "\033[0;32mDone for now\033[0m\n"
