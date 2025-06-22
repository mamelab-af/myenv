#!/bin/sh

set -e

##### install by homebrew #####

./install-homebrew.sh

./install-docker.sh
./install-by-homebrew.sh aws-vpn-client
./install-by-homebrew.sh dbeaver-community
# ./install-by-homebrew.sh google-chrome
./install-by-homebrew.sh google-japanese-ime
./install-by-homebrew.sh kindle
./install-by-homebrew.sh maccy
# ./install-by-homebrew.sh microsoft-teams
./install-by-homebrew.sh mos
./install-by-homebrew.sh mysql-client
./install-by-homebrew.sh libpq
./install-by-homebrew.sh postman
./install-by-homebrew.sh rectangle
./install-by-homebrew.sh slack
./install-by-homebrew.sh stats
./install-by-homebrew.sh the-unarchiver
./install-by-homebrew.sh warp
./install-by-homebrew.sh zoom
./install-by-homebrew.sh microsoft-office --cask

./install-by-homebrew.sh dotnet-sdk --cask

# ./install-by-homebrew.sh openjdk
# https://formulae.brew.sh/formula/openjdk
sudo ln -sfn $(brew --prefix)/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

./install-by-homebrew.sh hadolint
./install-by-homebrew.sh powershell/tap/powershell

#./install-by-homebrew.sh tomcat

##### install by anyenv #####

# ./install-anyenv.sh

# ./install-anyenv-goenv.sh
# ./install-anyenv-nodenv.sh
