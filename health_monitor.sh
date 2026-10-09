#!/bin/bash

# Colors
GREEN="\e[32m"
YELLOW="\e[33m"
RED="\e[31m"
BLUE="\e[34m"
RESET="\e[0m"

# Health Score
HEALTH_SCORE=100

# Log file
LOG_DIR="logs"
LOG_FILE="$LOG_DIR/health.log"

mkdir -p "$LOG_DIR"

# Output screen + log file
exec > >(tee -a "$LOG_FILE") 2>&1

echo -e "${BLUE}======================================${RESET}"
echo -e "${GREEN}      Linux System Health Monitor${RESET}"
echo -e "${BLUE}======================================${RESET}"

echo "Date & Time : $(date)"
echo "Hostname    : $(hostname)"
echo "Uptime      : $(uptime -p)"

echo ""
echo "----------- CPU Load -----------"
uptime | awk -F'load average:' '{print $2}'

echo ""
echo "----------- Memory Usage -----------"
free -h

echo ""
echo "------------RAM Status------------------"

RAM_USED=$(free | awk '/Mem:/ {printf("%.0f"), $3/$2 * 100}')

echo "RAM Used : ${RAM_USED}%"

if [ "$RAM_USED" -ge 80]; then
	echo -e "${RED}WARNING: Hihj RAM Usage${RESET}"
	HEATH_SCORE=$((HEATH_SCORE-20))
else
	echo -e "${GREEN}RAM Status : OK${RESET}"
fi

echo ""
echo "----------- Disk Usage -----------"
df -h

echo ""
echo "Checking Disk Usage..."

df -hP | awk 'NR>1 {print $5 " " $6}' | while read output
do
    usage=$(echo $output | awk '{print $1}' | sed 's/%//')
    partition=$(echo $output | awk '{print $2}')

    if [ "$usage" -ge 80 ]; then
        echo -e "${RED}WARNING:${RESET} $partition is ${usage}% full"
    else
        echo -e "${GREEN}OK:${RESET} $partition is ${usage}% used"
    fi
done

echo ""
echo "------ Top 5 CPU Processes ------"
ps -eo pid,comm,%cpu --sort=-%cpu | head -6

echo ""
echo "------ Top 5 Memory Processes ------"
ps -eo pid,comm,%mem --sort=-%mem | head -6

echo ""
echo -e "${GREEN}Health Check Completed Successfully!${RESET}"

