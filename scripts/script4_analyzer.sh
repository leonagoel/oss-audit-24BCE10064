#!/bin/bash
# Script 4: Log File Analyzer
# Concept: while-read loop, counters, command-line arguments

LOGFILE=$1 # Provide log path as argument, e.g., /var/log/syslog
KEYWORD=${2:-"error"} # Defaults to 'error'
COUNT=0

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"