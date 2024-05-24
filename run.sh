#!/bin/sh

set -e

##### copy zshrc & sub shells #####

(
  cd zshrc
  ./copy-zshrc.sh
)

##### install packages by homebrew #####

(
  cd homebrew
  ./install-all.sh
)
