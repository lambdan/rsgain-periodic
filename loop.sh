#!/bin/sh

if [ -z "$SLEEP" ]; then
    SLEEP="300"
fi

if [ -z "$THREADS" ]; then
    THREADS="MAX"
fi

if [ -z "$SKIP_EXISTING" ]; then
    SKIP_EXISTING="true"
fi

print_line() {
    echo "----------------------------------------"
    echo "$1"
    echo "----------------------------------------"
}

print_line "Settings:
- SLEEP: $SLEEP seconds
- THREADS: $THREADS
- SKIP_EXISTING: $SKIP_EXISTING"

while true; do
    print_line "Starting run at $(date)"
    
    ARGS="-m $THREADS"
    if [ "$SKIP_EXISTING" = "true" ]; then
        ARGS="$ARGS --skip-existing"
    fi
    rsgain easy $ARGS /music
    
    print_line "Run finished run at $(date). Sleeping for $SLEEP seconds..."
    sleep $SLEEP
done