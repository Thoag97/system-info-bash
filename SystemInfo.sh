#!/bin/bash

# 
echo "                            "
echo "Hostname and OS Information:"
echo "                            "
  cat /etc/hostname
  cat /etc/os-release | grep "ID" | grep "VERSION_ID"
echo "                        "
echo "CPU, Kernel, and Memory Information: "
echo "                        " 
  cat /proc/cpuinfo | grep "model name" | uniq
echo "                        "
  cat /proc/version 
  free -h
echo "Uptime:"
echo "                        "
  w
echo "                        " 
  read -p "Press Enter to Countinue... "  
echo "                        "
  df -Th 
echo "                        " 
  lsblk --noempty
  read -p "Press enter to countinue" 
echo "                        "
echo "Network Information:" 
echo "                        "
  ip address | grep -v inet6 | grep inet
echo "                        "
  ip address | grep -v inet6 | grep link
echo "                        "
  cat /etc/resolv.conf
echo "                        "
  read -p "Press enter to countinue... "
echo "Last 5 error logs:      "
  journalctl -g error --case-sensitive=FALSE --no-pager -n 5 -q
