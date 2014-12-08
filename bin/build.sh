#!/bin/sh

set -e
set -x
export DEBIAN_FRONTEND=noninteractive
alias aptinstall="apt-get install --no-install-recommends --yes"

apt-get update
aptinstall wget nodejs npm wget unzip nginx-core
ln -s /usr/bin/nodejs /usr/bin/node

useradd --system --user-group --create-home --home /ghost ghost
