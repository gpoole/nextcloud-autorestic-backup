#!/usr/bin/bash

mkdir -p /etc/autorestic
cp config.yml /etc/autorestic/config.yml
chown -R root:root /etc/autorestic
chmod -R og-rwx /etc/autorestic/

cp backup-nextcloud-prepare.sh backup-nextcloud-finish.sh /usr/bin/

./install-service.sh autorestic
./install-service.sh autorestic-prune

autorestic -c /etc/autorestic/config.yml check