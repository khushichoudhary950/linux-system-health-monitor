# 🖥️ Linux System Health Monitor

A lightweight **Linux System Health Monitoring Tool** built using Bash scripting. It collects system information, monitors CPU load, memory and disk usage, identifies resource-intensive processes, and stores monitoring output in a log file.

## 🚀 Project Overview

This project automates basic Linux system health checks using Bash and standard Linux command-line utilities. It helps users inspect resource utilization and review monitoring output through log files.

## ✨ Features

- 🖥️ **System Information:** Displays hostname, date, time, and uptime.
- ⚙️ **CPU Monitoring:** Reports system load averages.
- 🧠 **Memory Monitoring:** Displays RAM and swap statistics.
- 💾 **Disk Monitoring:** Reports filesystem utilization and disk usage warnings.
- 📊 **Process Monitoring:** Lists the top five CPU-consuming and memory-consuming processes.
- 🎨 **Terminal Output:** Presents monitoring information in a readable format.
- 📝 **Automatic Logging:** Appends monitoring output to `logs/health.log`.

## 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| Linux / Ubuntu | Operating environment |
| Bash | Automation and scripting |
| Linux utilities | System resource monitoring |
| Git | Version control |
| GitHub | Source code hosting |

## 📁 Project Structure

```text
linux-system-health-monitor/
├── health_monitor.sh
├── logs/
│   └── health.log
├── screenshots/
├── .gitignore
└── README.md
```

## 📋 Prerequisites

- Ubuntu or another Linux distribution
- Bash shell
- Standard Linux command-line utilities
- Git (for cloning the repository)

## 🚀 Installation

**1. Clone the repository**

```bash
git clone https://github.com/khushichoudhary950/linux-system-health-monitor.git
```

**2. Navigate to the project directory**

```bash
cd linux-system-health-monitor
```

**3. Make the script executable**

```bash
chmod +x health_monitor.sh
```

## ▶️ Run the Project

Execute the monitoring script:

```bash
./health_monitor.sh
```

Alternatively, run it using Bash:

```bash
bash health_monitor.sh
```

The script displays the monitoring report in the terminal and appends its output to the log file.

## 📊 View Monitoring Logs

**Display the complete log**

```bash
cat logs/health.log
```

**Display the latest 20 entries**

```bash
tail -n 20 logs/health.log
```

**Follow new log entries in real time**

```bash
tail -f logs/health.log
```

Press `Ctrl + C` to stop following the log.

## 🔍 Troubleshooting

**Check Bash syntax**

```bash
bash -n health_monitor.sh
```

**Fix execution permission**

```bash
chmod +x health_monitor.sh
```

**Inspect monitoring logs**

```bash
cat logs/health.log
```

## 🎯 Learning Outcomes

- Linux system administration fundamentals
- Bash scripting and conditional statements
- CPU, RAM, and disk monitoring
- Process inspection using Linux utilities
- File redirection and log management
- Git and GitHub version control

## 🔮 Future Improvements

- Configurable CPU, RAM, and disk thresholds
- Improved memory usage alerts
- Overall system health score
- Scheduled monitoring using cron
- Log rotation and summary reports
- Email or notification alerts

## 👩‍💻 Author

**Khushi Choudhary**

- **GitHub:** [@khushichoudhary950](https://github.com/khushichoudhary950)
- **Project:** [Linux System Health Monitor](https://github.com/khushichoudhary950/linux-system-health-monitor)

---

*Built as a hands-on project to practice Linux system administration and Bash scripting.*
