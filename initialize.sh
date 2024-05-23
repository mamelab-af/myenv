#!/bin/sh

set -e

./copy_zshrc.sh

##### install homebrew #####

./install_homebrew.sh

# ./install_raycast.sh
./install_stats.sh
./install_maccy.sh
./install_mos.sh
./install_rectangle.sh
./install_slack.sh
./install_zoom.sh
./install_google_chrome.sh
./install_the_unarchiver.sh
./install_kindle.sh
./install_google_japanese_ime.sh
./install_microsoft_teams.sh

##### install for develop #####

./install_wrap.sh
./install_docker.sh
./install_postman.sh
./install_aws_vpn_client.sh
./install_dbeaver_community.sh

./install_anyenv.sh
./install_anyenv_goenv.sh
./install_anyenv_nodenv.sh
