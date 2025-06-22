#!/bin/sh

set -e

EXISTS=$(brew list --full-name -1 | grep -q -x "anyenv"; echo $?)

if [ $EXISTS -eq 0 ]; then
  echo Upgrade anyenv
  brew upgrade anyenv
else
  echo Install anyenv
  # Install anyenv.
  brew install anyenv
  source ~/.zshrc
  yes | anyenv install --init

  # Install anyenv-update.
  mkdir -p $(anyenv root)/plugins
  git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update

  # Source .zshrc
  source ~/.zshrc
fi


