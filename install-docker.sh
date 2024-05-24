#!/bin/sh

set -e

# Uninstall docker.
brew uninstall --cask docker --force

# Install docker.
brew install --cask docker

# see https://github.com/docker/for-mac/issues/6898
sudo ln -sf /Applications/Docker.app/Contents/Resources/bin/docker-credential-ecr-login /usr/local/bin/docker-credential-ecr-login
