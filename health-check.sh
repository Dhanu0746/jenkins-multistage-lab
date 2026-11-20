#!/bin/sh

echo "================================"
echo "Starting System Health Check"
echo "================================"

echo "Checking system information..."
uname -a

echo "Checking disk usage..."
df -h

echo "Health Check Completed Successfully!"