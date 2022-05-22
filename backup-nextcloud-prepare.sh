#!/usr/bin/bash
set -e

rm -rf /var/snap/nextcloud/common/backups/current/
/snap/bin/nextcloud.export 2>&1 >/var/log/nextcloud-export.log
last_backup=`ls -t /var/snap/nextcloud/common/backups/ | head -n 1`
mv /var/snap/nextcloud/common/backups/$last_backup /var/snap/nextcloud/common/backups/current
