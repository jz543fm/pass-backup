#!/usr/bin/env bash

echo "exports to the file: ~/.password-store/my-private-key.asc\n"
gpg --export-secret-keys $ID > ~/.password-store/my-private-key.asc
