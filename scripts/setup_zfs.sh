#!/bin/bash
# setup_zfs.sh - Professional ZFS Pool Configuration for Project JKeep
# Author: Juanfe Lozano (as defined in project history)

# Check for root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi

# Variables (User should verify Disk ID)
DISK_ID="/dev/sdb" # Example, should be /dev/disk/by-id/...
POOL_NAME="tank"

echo "Initializing ZFS Pool: $POOL_NAME on $DISK_ID"

# 1. Wipe headers to avoid "Device Busy" or "64M" errors
dd if=/dev/zero of=$DISK_ID bs=1M count=100
partprobe $DISK_ID

# 2. Create the pool with ashift=12 (optimized for 4k sectors)
zpool create -f -o ashift=12 $POOL_NAME $DISK_ID

# 3. Set Professional Properties
zfs set compression=lz4 $POOL_NAME
zfs set copies=2 $POOL_NAME
zfs set xattr=sa $POOL_NAME
zfs set atime=off $POOL_NAME

# 4. Optional: Add L2ARC (if partition exists)
# zpool add $POOL_NAME cache /dev/sdaX

echo "ZFS Pool $POOL_NAME created successfully."
zpool status $POOL_NAME
