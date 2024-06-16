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

##### run knowledge #####

# git clone https://github.com/support-project/docker-knowledge.git
(cd knowledge; docker-compose up -d)
# user/password : admin/admin123
