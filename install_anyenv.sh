#!/bin/sh

# set -e

# Install anyenv.
brew install anyenv
source ~/.zshrc
yes | anyenv install --init

# Install anyenv-update.
mkdir -p $(anyenv root)/plugins
git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update

# Source .zshrc
source ~/.zshrc
