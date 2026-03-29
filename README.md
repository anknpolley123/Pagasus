# Pegasus Security Toolkit 🛡️

![Version](https://img.shields.io/badge/version-1.2-blue)
![Python](https://img.shields.io/badge/python-3.x-green)
![Platform](https://img.shields.io/badge/platform-Linux%20|%20Android-orange)

Pegasus is an advanced security auditing and network discovery suite. It is designed to simplify the deployment of security environments by automating dependency management and providing a unified execution interface through a Python Virtual Environment (venv).
![Screenshot_20260329_140920_Termux](https://github.com/user-attachments/assets/3aa0aeeb-b222-4c75-8ed9-f6dec16761e3)
![Screenshot_20260329_140957_Termux](https://github.com/user-attachments/assets/fcc10090-095d-4210-9aed-307c1717df4a)

## 🚀 Features
- **Automated Setup**: One-click installation of system and Python dependencies using `Pagasus.sh`.
- **Isolated Environment**: Automatically configures a Python `venv` to prevent system-wide package conflicts.
- **Network Auditing**: Integrated `nmap` support for professional-grade network discovery.
- **Device Management**: Built-in support for `adb` and `scrcpy` to interact with mobile devices.
- **Dual-Version Support**: Easy switching between Stable (v1.1) and Latest (v1.2) builds.

## 🛠️ Installation & Usage

### Setup And Run It
```bash
git clone https://github.com/anknpolley123/Pegasus.git
cd Pegasus
chmod +x Pagasus.sh
./Pagasus.sh
# After Installing Dependencies, If Pegasus not start then run it manually.
python3 pegasus_v_1.3.py #latest version
#Run Older Version
python3 pegasusV-1.2.py # Version 1.2
python3 pegasus_v1.1.py # Version 1.1

