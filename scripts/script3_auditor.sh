#!/bin/bash
# Script 3: Disk and Permission Auditor
# Concept: for loop, ls -ld, awk

DIRS=("/etc" "/var/log" "/home" "/usr/bin")

echo "--- Directory Audit Report ---"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        echo "Directory: $DIR | Permissions/Owner: $PERMS"
    else
        echo "Warning: $DIR does not exist."
    fi
done

# Wireshark specific config check
if [ -d "/etc/wireshark" ]; then
    echo "Wireshark Config found: $(ls -ld /etc/wireshark)"
fi