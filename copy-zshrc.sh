#!/bin/sh

set -e

# Copy .zshrc
cp -a .zshrc ~/.zshrc

# Copy .zshrc sub shell
cp -a .zshrc-anyenv-setup.sh     ~/.zshrc-anyenv-setup.sh
cp -a .zshrc-common-alias.sh     ~/.zshrc-common-alias.sh
cp -a .zshrc-docker-alias.sh     ~/.zshrc-docker-alias.sh
cp -a .zshrc-docker-setup.sh     ~/.zshrc-docker-setup.sh
cp -a .zshrc-git-alias.sh        ~/.zshrc-git-alias.sh
cp -a .zshrc-git-setup.sh        ~/.zshrc-git-setup.sh
cp -a .zshrc-kafka-alias.sh      ~/.zshrc-kafka-alias.sh
cp -a .zshrc-mysql-alias.sh      ~/.zshrc-mysql-alias.sh
cp -a .zshrc-mysql-setup.sh      ~/.zshrc-mysql-setup.sh

# Source .zshrc
source ~/.zshrc
