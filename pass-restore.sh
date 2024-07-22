#!/usr/bin/env bash

# Prompt the user for the repository URL
read -p "Enter the repository URL to restore: " repo_url
git clone $repo_url ~/.password-store/
echo "Restore GPG key from ~/.password-store/my-private-key.asc\n"
gpg --import-options restore --import ~/.password-store/my-private-key.asc
if [ $? -eq 0 ]; then
    echo "The restore of GPG key is completed"
else
    echo "Restore not succeeded"
fi
echo "Done, now, type pass\n"
