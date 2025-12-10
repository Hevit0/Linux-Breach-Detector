# 🛡️ Breach Detector - Linux Security Tool

A lightweight Bash script designed for System Administrators and SOC Analysts to identify potential **Brute-Force Attacks** in real-time by parsing server logs.

## 🚀 Features
* **Automated Log Parsing:** Instantly scans thousands of log lines.
* **Threat Identification:** Filters for "Failed password" events to isolate attack vectors.
* **Top Suspects:** Aggregates and sorts IP addresses by the number of failed attempts.
* **Color-Coded Output:** Provides immediate visual alerts for high-priority threats.

## 🛠️ Usage

1. **Clone the repository:**
   ```bash
   git clone [https://github.com/](https://github.com/)[Hevit0]/Linux-Breach-Detector.git
   
2. **Make the script executable:**
   ```bash
   chmod +x breach_detector.sh

1. **Clone the repository:**
   ```bash
   git clone [https://github.com/](https://github.com/)[Hevit0]/Linux-Breach-Detector.git

📊 Example Output
SUSPECTS IDENTIFIED ( Attempts - IP Address )
-------------------------------------------
   4 192.168.1.50
   2 45.33.22.11
   1 10.0.0.5

⚙️ Requirements
Linux / Unix / macOS Terminal

Basic Utils: grep, awk, sort, uniq

Developed by a Computer Science Student passionate about DevSecOps.
