#!/bin/sh

set -e
set -x
export HOME="${GHOST_HOME}"

cd /tmp
wget https://ghost.org/zip/ghost-${GHOST_VERSION}.zip
unzip -d ${GHOST_HOME} /tmp/ghost-${GHOST_VERSION}.zip
rm /tmp/ghost-${GHOST_VERSION}.zip

cd ${GHOST_HOME}
npm install --production
