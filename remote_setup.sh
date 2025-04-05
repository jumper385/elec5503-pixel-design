#!/bin/bash
source ./common.sh

# SETUP ENVIRONMENT FILES
setup_env

# PING THE SERVER
ping -c 1 "$REMOTE_HOST" > /dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "Error: Unable to reach $REMOTE_HOST"
    exit 1
else
    echo "Success: $REMOTE_HOST is reachable"
fi