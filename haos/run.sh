#!/bin/sh
set -eu

options=/data/options.json

if [ ! -f "$options" ]; then
    echo "Home Assistant options file is unavailable"
    exit 1
fi

auth_code=$(jq -er '.access_auth_code | strings | select(length > 0)' "$options")
language=$(jq -er '.language | strings | select(length > 0)' "$options")

export SIYUAN_ACCESS_AUTH_CODE="$auth_code"
export SIYUAN_LANG="$language"
export SIYUAN_WORKSPACE_PATH=/siyuan/workspace

exec /opt/siyuan/entrypoint.sh serve
