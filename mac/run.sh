#!/bin/sh

set -e

##### copy zshrc & sub shells #####

(
  cd shell
  ./copy-zshrc.sh
)

##### install packages by homebrew #####

(
  cd homebrew
  ./install-all.sh
)

##### run knowledge #####

# (cd knowledge; git clone --depth 1 https://github.com/support-project/docker-knowledge.git . && rm -rf .git)
# (cd knowledge; docker-compose up -d)

# localhost:8080
# user/password : admin/admin123
