#!/bin/bash
# Script 1: System Identity Report
# Author: Leona Goel
# Roll Number: 24BCE10064
# Course: Open Source Software

# --- Variables
STUDENT_NAME="Leona Goel"
SOFTWARE_CHOICE="Wireshark"

# System info using command substitution
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
OS_NAME=$(cat /etc/os-release | grep "PRETTY_NAME" | cut -d '"' -f 2)
CURRENT_DATE=$(date)

# --- Display
echo "=========================================="
echo "      $SOFTWARE_CHOICE Open Source Audit      "
echo "=========================================="
echo "Student Name : $STUDENT_NAME"
echo "Kernel Ver   : $KERNEL"
echo "Current User : $USER_NAME"
echo "System Uptime: $UPTIME"
echo "Distribution : $OS_NAME"
echo "Date & Time  : $CURRENT_DATE"
echo "------------------------------------------"
echo "Note: This OS is powered by Open Source software."