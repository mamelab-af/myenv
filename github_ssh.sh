#!/bin/sh

set -e

# Generage key.
ssh-keygen -t ed25519 -N "" -f ~/.ssh/github

# Copy public key.
pbcopy < ~/.ssh/github.pub

# Add public key to github(manual).
open https://github.com/settings/keys

# Add to ~/.ssh/config
echo "Host github.com
  IdentityFile ~/.ssh/github
  User git" > ~/.ssh/config

# Test
yes yes | ssh -T github.com
