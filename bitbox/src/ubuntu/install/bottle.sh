#!/usr/bin/env bash

set -e

echo "Install Bottle Browser"

#install utils
apt-get update -y
apt-get install git-core curl build-essential openssl libssl-dev -y
apt-get clean

# install node 
curl -L https://raw.githubusercontent.com/zeit/install-node/master/install.sh | sh
node -v

# install npm
curl -L https://npmjs.org/install.sh | sh
npm -v

# install electron
npm install -g electron

# finally, install bottle
git clone https://github.com/interplanaria/bottle.git && cd bottle
npm install





