#!/bin/bash

# ==========================================
# Project: Breach Detector (Log Analyzer)
# Author: Neacsu Andrei
# Description: Automates the detection of brute-force attacks 
#              by analyzing auth logs for failed login attempts.
# Usage: ./breach_detector.sh <log_file>
# ==========================================

RED='\e[31m'
GREEN='\e[32m'
NC='\e[0m' # No Color

# 1. Input Validation
if [ $# -ne 1 ]; then
    echo -e "${RED}Usage: $0 <log_file>${NC}"
    echo "Error: Please provide a log file to analyze."
    exit 1
fi

LOG_FILE="$1"

# 2. File Check
if [ ! -f "$LOG_FILE" ]; then
    echo -e "${RED}[ERROR] Log file '$LOG_FILE' does not exist.${NC}"
    exit 1
fi

# 3. Execution
echo -e "${GREEN}Analyzing log file: $LOG_FILE...${NC}"
echo "---------------------------------------------------" 
echo -e "${RED}SUSPECTS IDENTIFIED ( Attempts - IP Address )${NC}"
echo "---------------------------------------------------" 

# 4. The Logic (Optimized: Removed 'cat' for better performance)
# We search for "Failed password", extract the 11th column (IP), count, and sort.
grep "Failed password" "$LOG_FILE" | awk '{print $11}' | sort | uniq -c | sort -nr

echo -e "${NC}\nAnalysis complete."
exit 0