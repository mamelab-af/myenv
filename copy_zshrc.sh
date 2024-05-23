#!/bin/sh

set -e

# Copy .zshrc
cp -a .zshrc ~/.zshrc

# Copy .zshrc sub shell
cp -a .zshrc_anyenv_setup.sh     ~/.zshrc_anyenv_setup.sh
cp -a .zshrc_common_alias.sh     ~/.zshrc_common_alias.sh
cp -a .zshrc_docker_alias.sh     ~/.zshrc_docker_alias.sh
cp -a .zshrc_docker_setup.sh     ~/.zshrc_docker_setup.sh
cp -a .zshrc_git_alias.sh        ~/.zshrc_git_alias.sh
cp -a .zshrc_git_setup.sh        ~/.zshrc_git_setup.sh
cp -a .zshrc_kafka_alias.sh      ~/.zshrc_kafka_alias.sh
cp -a .zshrc_mysql_alias.sh      ~/.zshrc_mysql_alias.sh

# Source .zshrc
source ~/.zshrc
