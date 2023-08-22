#!/bin/bash

# Set your GitHub username and email
GIT_USER="SaurbhPandey"
GIT_EMAIL="spandey882000@gmail.com"

# Set your original repo URL and forked repo URL
UPSTREAM_REPO="https://github.com/karanshukla430/github_finder.git"
FORKED_REPO="https://github.com/SaurbhPandey/github_finder123.git"

# Check if hub is installed, and if not, download and install it
# if ! command -v hub &> /dev/null; then
#     echo "hub is not installed. Installing..."
#     if [[ "$OSTYPE" == "darwin"* ]]; then
#         brew install hub
#     else
#         # Replace this with your preferred installation method for non-mac systems
#         echo "Please install hub: https://github.com/github/hub#installation"
#         exit 1
#     fi
# fi

# Create and switch to the temporary branch
git checkout -b update-from-upstream

# Configure Git user
git config user.name "$GIT_USER"
git config user.email "$GIT_EMAIL"

# Fetch upstream changes
git remote add upstream "$UPSTREAM_REPO"
git fetch upstream master

# Merge upstream changes
git merge upstream/master

# Push changes to forked repo
git push origin update-from-upstream

# Create pull request using Hub
hub pull-request -b master -h update-from-upstream -m "Automated PR: Update from upstream"
