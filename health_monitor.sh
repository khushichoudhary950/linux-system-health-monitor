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

echo ""
echo "----------------Disk Usage-------------------"
df -h

echo ""
echo "------------Top 5 CPU Processes----------------"
ps -eo pid,comm,%cpu --sort=-%cpu | head -6

echo ""
echo "-----------Top 5 Memory Processes--------------"
ps -eo pid,comm,%mem --sort=-%mem | head -6

echo "------------------------------------------------"
echo "Health Check Completed"
echo "------------------------------------------------"




