#!/bin/sh

echo "================================"
echo "Starting System Health Check"
echo "================================"

echo "Checking system information..."
uname -a

echo "Checking disk usage..."
df -h

echo "Updated Health Check - Version 2.0"