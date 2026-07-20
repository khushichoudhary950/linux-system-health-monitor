#!/bin/bash
echo "-------------------------------------------"
echo "  Linux System Health Monitor"
echo "--------------------------------------------"

echo "Date & Time : $(date)"
echo "Hostname    : $(hostname)"
echo "Uptime      : $(uptime -p)"

echo ""
echo "---------------CPU Load--------------------"
uptime | awk -F'load average:' '{print $2}'

echo ""
echo "----------------Memory Usage---------------"
free -h

echo "--------------------------------------------"

