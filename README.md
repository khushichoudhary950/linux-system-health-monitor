🖥️ Linux System Health Monitor
A lightweight Linux System Health Monitoring Tool built with Bash scripting. The script gathers key system information, reports CPU load, memory and disk usage, lists resource-intensive processes, and saves monitoring output to a log file.

🚀 Project Links
- 💻 Source Code: Linux System Health Monitor

📌 Project Overview
System resource monitoring helps users understand the current state of a Linux machine and identify processes or resources that may need attention.

This project uses Bash and standard Linux command-line utilities to collect system information and present it in a readable terminal report. It also appends the monitoring output to a log file for later review.

The system:

- Displays the hostname, date/time, and system uptime
- Reports CPU load averages
- Shows RAM and swap statistics
- Reports filesystem disk usage
- Lists the top five processes by CPU usage
- Lists the top five processes by memory usage
- Displays status messages and disk-usage warnings
- Saves monitoring output to a log file

🎯 Objectives
The main objectives of this project are:

1. Practice Linux system administration commands.
2. Use Bash to automate routine system checks.
3. Monitor CPU, memory, and disk usage.
4. Identify processes that consume significant system resources.
5. Save monitoring output for later inspection.
6. Practice project version control using Git and GitHub.

⚙️ How It Works
The Bash script runs a sequence of Linux commands, formats their output, displays a report in the terminal, and appends the report to a log file.

Monitoring Areas
Area	Information Collected
System information	Date/time, hostname, and uptime
CPU	System load averages
Memory	RAM and swap statistics, including calculated RAM usage
Disk	Filesystem usage and disk-usage warning threshold
Processes	Top five processes by CPU and memory usage
Logging	Monitoring output appended to logs/health.log


The script is intended for lightweight, local monitoring. It is not a replacement for a full monitoring platform.

📁 Project Structure
linux-system-health-monitor/
├── health_monitor.sh   # Main Bash monitoring script
├── logs/
│   └── health.log      # Generated monitoring log
├── screenshots/        # Project screenshots, if added
├── .gitignore          # Git ignore rules
└── README.md           # Project documentation

🛠️ Technologies Used
Scripting
- Bash

Operating System and Utilities
- Linux / Ubuntu
- uptime
- free
- df
- ps
- awk
- sed
- tee

Version Control
- Git
- GitHub

📋 Prerequisites
- A Linux environment such as Ubuntu
- Bash shell
- Standard Linux command-line utilities
- Git, if you want to clone or version-control the project
The script is designed to use utilities commonly available on Ubuntu.

🚀 Installation
1. Clone the Repository
git clone https://github.com/khushichoudhary950/linux-system-health-monitor.git

2. Enter the Project Directory
cd linux-system-health-monitor

3. Make the Script Executable
chmod +x health_monitor.sh

▶️ Run the Monitor
Run the script from the project directory:
./health_monitor.sh
If needed, you can also run it through Bash:
bash health_monitor.sh
The script displays a system health report in the terminal and appends its output to the log file.

📊 View Monitoring Logs
The script writes monitoring output to:
logs/health.log
Display the complete log:
cat logs/health.log
Display the most recent entries:
tail -n 20 logs/health.log
Follow new log entries as they are written:
tail -f logs/health.log
Press Ctrl + C to stop following the log.

🔍 Troubleshooting
Permission Denied
Make the script executable and try again:
chmod +x health_monitor.sh
./health_monitor.sh
Check Bash Syntax
bash -n health_monitor.sh
If this command reports an error, fix the reported syntax before relying on the script's output.
Check the Log File
cat logs/health.log
If the log file is missing, run the script and check that it completes successfully.

💡 Key Features
Lightweight Monitoring
Uses Bash and standard Linux utilities to collect basic system metrics.

Resource Visibility
Shows CPU load, memory statistics, disk utilization, and resource-intensive processes in one report.

Log History
Appends monitoring output to a log file so previous reports can be reviewed.

Linux Command-Line Practice
Combines common system commands with shell scripting, output formatting, and file redirection.

🔮 Future Improvements
Possible future enhancements include:
- Add configurable CPU, RAM, and disk thresholds
- Correctly validate and test RAM warning logic
- Display an overall system health score
- Add timestamps and clearer log formatting
- Automate periodic checks using cron
- Add log rotation to prevent unbounded log growth
- Generate summary reports from historical logs
- Add screenshots of sample terminal output
- Add optional email or notification alerts

📚 Learning Outcomes
This project provides practice with:
- Bash scripting and executable permissions
- Linux system monitoring commands
- Variables, conditionals, pipes, and command substitution
- CPU, RAM, and disk usage inspection
- Process monitoring with ps
- Output redirection and log files
- Git and GitHub version control
- Writing project documentation

👩‍💻 Author
Khushi Choudhary
- GitHub: @khushichoudhary950
- Project Repository: linux-system-health-monitor
