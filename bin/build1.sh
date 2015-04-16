#!/bin/sh

set -e
set -x
alias aptinstall="apt-get install --no-install-recommends --yes"

apt-get update
aptinstall wget ca-certificates nodejs npm unzip
ln -s /usr/bin/nodejs /usr/bin/node

useradd --system --user-group --create-home --home /ghost ghost
runas ghost /build2.sh
