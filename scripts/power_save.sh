#!/bin/bash
# power_save.sh - Laptop NAS Power Optimization
# Reduces heat and electricity usage for Asus X441U

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi

echo "Installing power management tools..."
apt-get install -y powertop hdparm

echo "Configuring HDD spin-down (10 minutes)..."
# -S 120 means 120 * 5 seconds = 600 seconds = 10 minutes
hdparm -S 120 /dev/sdb

echo "Applying PowerTOP auto-tune..."
powertop --auto-tune

echo "Note: To make these persistent, consider adding them to a systemd service or crontab @reboot."
