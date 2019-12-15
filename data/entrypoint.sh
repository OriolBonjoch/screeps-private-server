#!/bin/sh

if [ -z "$STEAM_KEY" ]; then
    echo "STEAM_KEY must be passed as an environment variable. EXITING PROCESS"
    exit 1
fi

echo "${STEAM_KEY}" | screeps init "/screeps"
npm install ini
npm install screepsmod-admin-utils

exec "$@"