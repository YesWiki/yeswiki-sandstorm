#!/bin/bash
# Checks if there's a composer.json, and if so, installs/runs composer.

set -euo pipefail

cd /opt/app

if [ -f /opt/app/composer.json ] ; then
    if [ ! -f composer.phar ] ; then
        curl -sS https://getcomposer.org/installer | php
    fi
    php composer.phar install
fi

# broken (for now) symlinks to writable place
rm -rf /var/yeswiki/cache
rm -rf /var/yeswiki/files
ln -s /var/yeswiki/cache /opt/app/cache
ln -s /var/yeswiki/files /opt/app/files
