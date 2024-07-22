#!/usr/bin/env bash

# Prompt the user for the repository URL
read -p "Enter the repository URL: " repo_url
# Initialize the Git repository
pass git init
pass git remote add origin $repo_url
pass git add -A
pass git commit -m "initial commit, init?"
pass git push -u origin master