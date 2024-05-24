#!/bin/sh

set -e

EXISTS=$(brew list --full-name -1 | grep -q -x "docker"; echo $?)

if [ $EXISTS -eq 0 ]; then
  echo Upgrade docker
  brew upgrade --cask docker
else
  # Uninstall docker.
  brew uninstall --cask docker --force

  # Install docker.
  brew install --cask docker

  # see https://github.com/docker/for-mac/issues/6898
  sudo ln -sf /Applications/Docker.app/Contents/Resources/bin/docker-credential-ecr-login /usr/local/bin/docker-credential-ecr-login
fi
