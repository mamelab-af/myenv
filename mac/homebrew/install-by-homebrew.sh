#!/bin/sh

set +e

PKG_NAME=$1

EXISTS=$(brew list --full-name -1 | grep -q -x "${PKG_NAME}"; echo $?)

if [ $EXISTS -eq 0 ]; then
    echo Upgrade $@
    brew upgrade $@
else
  echo Install $@
  brew install $@
fi
