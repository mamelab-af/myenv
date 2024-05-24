#!/bin/sh

set -e

./copy-zshrc.sh

##### install homebrew #####

./install-homebrew.sh

# ./install-raycast.sh
./install-stats.sh
./install-maccy.sh
./install-mos.sh
./install-rectangle.sh
./install-slack.sh
./install-zoom.sh
./install-google-chrome.sh
./install-the-unarchiver.sh
./install-kindle.sh
./install-google-japanese-ime.sh
./install-microsoft-teams.sh

##### install for develop #####

./install-wrap.sh
./install-docker.sh
./install-postman.sh
./install-aws-vpn-client.sh
./install-dbeaver-community.sh

./install-anyenv.sh
./install-anyenv-goenv.sh
./install-anyenv-nodenv.sh
./install-mysql-client.sh
