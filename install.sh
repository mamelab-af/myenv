#!/bin/sh

set -e

./zshrc/copy-zshrc.sh

./homebrew/install-all.sh

# run knowledge
# git clone https://github.com/support-project/docker-knowledge.git
(cd knowledge; docker-compose up -d)
# user/password : admin/admin123
