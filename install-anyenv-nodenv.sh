#!/bin/sh

set -e

# Install nodenv.
anyenv install nodenv

# Source .zshrc
source ~/.zshrc

npm install -g yarn
