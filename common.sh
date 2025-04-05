#!/bin/bash

# SETUP ENVIRONMENT FILES
function setup_env() {
    ENV_FILE=".env"
    if [ ! -f "$ENV_FILE" ]; then
        echo "Error: $ENV_FILE file not found!"

        # prompt for username
        read -p "Enter your username: " USERNAME
        HOSTNAME=172.105.254.131
        REPO_NAME=elec5503-remote

        # create .env file
        echo "REMOTE_USER=$USERNAME" > $ENV_FILE
        echo "REMOTE_HOST=$HOSTNAME" >> $ENV_FILE
        echo "REPO_NAME=$REPO_NAME" >> $ENV_FILE

    fi

    for line in $(cat $ENV_FILE | grep -v '^#' | xargs); do
        export "$(echo "$line" | cut -d '=' -f 1)"="$(echo "$line" | cut -d '=' -f 2-)"
    done
}