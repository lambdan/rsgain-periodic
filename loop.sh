#!/bin/sh

set -e

if [ -z "$SLEEP" ]; then
    SLEEP="300"
fi

if [ -z "$THREADS" ]; then
    THREADS="MAX"
fi

if [ -z "$SKIP_EXISTING" ]; then
    SKIP_EXISTING="true"
fi

while true; do
    echo "Starting run at $(date)"
    
    ARGS="-m $THREADS"
    if [ "$SKIP_EXISTING" = "true" ]; then
        ARGS="$ARGS --skip-existing"
    fi
    rsgain easy $ARGS /music
    
    echo "Run finished run at $(date)"
    echo "Sleeping for $SLEEP seconds..."
    sleep $SLEEP
    clear
done