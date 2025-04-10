#!/bin/bash
source ./common.sh

# Setup Mode
if [ -z "$1" ]; then
    echo "Usage: $0 <mode>"
    echo "mode: upload | download"
    exit 1
fi
MODE=$1
if [ "$MODE" != "upload" ] && [ "$MODE" != "download" ]; then
    echo "Invalid mode: $MODE"
    echo "Usage: $0 <mode>"
    echo "mode: upload | download"
    exit 1
fi

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

# Check if the remote user is set
if [ -z "$REMOTE_USER" ]; then
    echo "Error: REMOTE_USER is not set in .env file"
    exit 1
fi
if [ -z "$REMOTE_HOST" ]; then
    echo "Error: REMOTE_HOST is not set in .env file"
    exit 1
fi
if [ -z "$REPO_NAME" ]; then
    echo "Error: REPO_NAME is not set in .env file"
    exit 1
fi

FILENAME=${REPO_NAME}_${REMOTE_USER}

# Upload from directory
if [ "$MODE" == "upload" ]; then
    # zip the current directory
    tar -czf /tmp/$FILENAME.tar.gz --no-xattrs --exclude='.git' --exclude 'ssh_key*' .
    # upload to remote server
    scp -i ./ssh_key_$REMOTE_USER /tmp/$FILENAME.tar.gz $REMOTE_USER@$REMOTE_HOST:/tmp
    # unzip the file on remote server
    ssh -i ./ssh_key_$REMOTE_USER $REMOTE_USER@$REMOTE_HOST "mkdir -p ~/$REPO_NAME"
    ssh -i ./ssh_key_$REMOTE_USER $REMOTE_USER@$REMOTE_HOST "tar -xf /tmp/$FILENAME.tar.gz -C ~/$REPO_NAME"
fi

# Download from directory
if [ "$MODE" == "download" ]; then
    # download the current directory from the remote server
    # ignore .git directory
    ssh -i ./ssh_key_$REMOTE_USER $REMOTE_USER@$REMOTE_HOST "tar -czf /tmp/$FILENAME.tar.gz --exclude .git --exclude 'ssh_key*' $REPO_NAME"
    scp -i ./ssh_key_$REMOTE_USER $REMOTE_USER@$REMOTE_HOST:/tmp/$FILENAME.tar.gz ../
    tar -xf ../$FILENAME.tar.gz -C ../
fi
