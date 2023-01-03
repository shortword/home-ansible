#!/bin/bash

set -e
set -u
set -f
set -o pipefail

source /root/restic/restic.env

declare -r EXCLUDE_FILE="/root/restic/excludes"

/usr/bin/restic forget -q --prune --keep-hourly 12 --keep-daily 7 --keep-weekly 4 --keep-monthly 12
/usr/bin/restic check -q
/usr/bin/restic backup -q --exclude-file="$EXCLUDE_FILE" /etc /home /root /usr/local
