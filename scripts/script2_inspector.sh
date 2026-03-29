#!/bin/bash
# Script 2: FOSS Package Inspector
# Concept: if-then-else, case statement, dpkg/rpm

PACKAGE="wireshark"

echo "Checking for $PACKAGE..."

# Check if package is installed (using dpkg for Debian/Ubuntu)
if dpkg -s $PACKAGE &>/dev/null; then
    echo "STATUS: $PACKAGE is installed."
    dpkg -s $PACKAGE | grep -E 'Package|Version|Status'
else
    echo "STATUS: $PACKAGE is NOT installed."
fi

# Case statement for philosophy note
case $PACKAGE in
    wireshark) echo "Philosophy: Wireshark provides network transparency for all." ;;
    httpd) echo "Apache: The web server that built the open internet." ;;
    mysql) echo "MySQL: Open source at the heart of millions of apps." ;;
    *) echo "Unknown FOSS package." ;;
esac