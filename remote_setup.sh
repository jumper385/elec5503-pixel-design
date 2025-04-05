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

# ssh-keygen into this folder ./
KEY_FILENAME=ssh_key_$REMOTE_USER

if [ ! -f "./$KEY_FILENAME" ]; then
    echo "Generating SSH key..."
    ssh-keygen -t rsa -b 4096 -C "$REMOTE_USER@$REMOTE_HOST" -f ./$KEY_FILENAME -N ""
else
    echo "SSH key already exists."
fi  

ssh-copy-id -i ./$KEY_FILENAME.pub $REMOTE_USER@$REMOTE_HOST
if [ $? -ne 0 ]; then
    echo "Error: Unable to copy SSH key to $REMOTE_HOST"
    exit 1
else
    echo "Success: SSH key copied to $REMOTE_HOST"
fi

# open ssh shell inter server
ssh -i ./$KEY_FILENAME $REMOTE_USER@$REMOTE_HOST
if [ $? -ne 0 ]; then
    echo "Error: Unable to connect to $REMOTE_HOST"
    exit 1
else
    echo "Success: Connected to $REMOTE_HOST"
fi