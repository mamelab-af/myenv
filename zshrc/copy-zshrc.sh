#!/bin/sh

set -e

# Copy .zshrc & sub shell
for FILE_NAME in $(find .zshrc* -type f); do
  cp -a $FILE_NAME ~/$FILE_NAME
done

# Source .zshrc
source ~/.zshrc
