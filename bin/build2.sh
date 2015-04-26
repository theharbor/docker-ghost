#!/bin/sh

set -e
set -x
export HOME="${GHOST_HOME}"

cd /tmp
wget https://ghost.org/zip/ghost-latest.zip
unzip -d ${GHOST_HOME} /tmp/ghost-*.zip
rm /tmp/ghost-*.zip

cd ${GHOST_HOME}
npm install --production
