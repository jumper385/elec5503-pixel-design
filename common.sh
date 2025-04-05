#!/bin/bash

# SETUP ENVIRONMENT FILES
function setup_env() {
    ENV_FILE=".env"
    if [ ! -f "$ENV_FILE" ]; then
        echo "Error: $ENV_FILE file not found!"
        exit 1
    fi

    for line in $(cat $ENV_FILE | grep -v '^#' | xargs); do
        export "$(echo "$line" | cut -d '=' -f 1)"="$(echo "$line" | cut -d '=' -f 2-)"
    done
}