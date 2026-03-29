#!/bin/bash

# =============================================================
# Pegasus Tool Suite - Automated Setup (VENV) & Launcher
# Created by Ankon Polley
# GitHub: https://github.com/anknpolley123/Pegasus
# =============================================================

# Colors
G='\e[1;32m'
B='\e[1;34m'
C='\e[1;36m'
Y='\e[1;33m'
R='\e[1;31m'
NC='\e[0m'

clear

# 1. Colorful Banner
echo -e "${C}============================================================${NC}"
echo -e "${G}  ____  _____ ____    _    ____  _   _ ____  ${NC}"
echo -e "${G} |  _ \| ____/ ___|  / \  / ___|| | | / ___| ${NC}"
echo -e "${G} | |_) |  _| | |  _ / _ \ \___ \| | | \___ \ ${NC}"
echo -e "${G} |  __/| |___| |_| / ___ \ ___) | |_| |___) |${NC}"
echo -e "${G} |_|   |_____|\____/_/   \_\____/ \___/|____/ ${NC}"
echo -e ""
echo -e "${Y}          Created by: Ankon Polley${NC}"
echo -e "${B}    Repo: https://github.com/anknpolley123/Pegasus${NC}"
echo -e "${C}============================================================${NC}"

# 2. System Dependency Installation
echo -e "${B}[*] Installing system dependencies (sudo required)...${NC}"
sudo apt update -y
sudo apt install nmap scrcpy adb python3 python3-pip python3-venv -y
sudo apt install python3.13-venv

# 3. Virtual Environment Setup
echo -e "${B}[*] Setting up Python Virtual Environment (venv)...${NC}"
if [ ! -d "venv" ]; then
    python3 -m venv venv
    echo -e "${G}[+] Virtual environment created.${NC}"
else
    echo -e "${Y}[!] Virtual environment already exists.${NC}"
fi

# Activate the environment
source venv/bin/activate

# 4. Install Python dependencies inside VENV
echo -e "${B}[*] Installing colorama inside venv...${NC}"
pip install colorama

echo -e "${G}[+] Setup complete! Environment is active.${NC}"
echo -e ""

# 5. Version Selection Menu
echo -e "${Y}Choose which version you want to run:${NC}"
echo -e "${C}[1]${NC} Pegasus v1.1"
echo -e "${C}[2]${NC} Pegasus v1.2"
echo -e "${R}[q]${NC} Exit"
echo -ne "${G}Select an option: ${NC}"
read choice

case $choice in
    1)
        echo -e "${B}[*] Launching Pegasus v1.1...${NC}"
        python3 pegasus_v1.1.py
        ;;
    2)
        echo -e "${B}[*] Launching Pegasus v1.2...${NC}"
        python3 pegasusV-1.2.py
        ;;
    q|Q)
        echo -e "${Y}Exiting setup.${NC}"
        deactivate
        exit 0
        ;;
    *)
        echo -e "${R}[!] Invalid option.${NC}"
        deactivate
        exit 1
        ;;
esac

# Deactivate when done
deactivate

