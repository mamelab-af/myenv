#!/bin/sh

set -e

# Install nodenv.
yes | anyenv install nodenv

# Source .zshrc
source ~/.zshrc

# npm install -g yarn
