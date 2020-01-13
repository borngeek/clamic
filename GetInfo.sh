#!/bin/sh

clear
echo "\e[93m"
echo "▄█▄    █         █▀▄▀█ ▄█ ▄█▄   "
echo "█▀ ▀▄  █     ███ █ █ █ ██ █▀ ▀▄ "
echo "█   ▀  █     ▄▄█ █   █ ██ █   ▀ "
echo "█▄  ▄▀ ███▄ █  █ █   █ ▐█ █▄  ▄▀"
echo "▀███▀        ███     █  ▐ ▀███▀ "
echo ''                                      
echo "Computer LAboratory Machine Information Collector"
echo "\e[32mDeveloped by: Anirban Chakraborty, IIT Kharagpur"
echo "\e[32mGithub: https://github.com/borngeek/clamic\n"
if [ ${EUID:-$(id -u)} -ne 0 ]
then
  echo "\e[31mUser needs to be root to run this script.\e[39m\n"
  exit
fi
if [ ! -f '/root/.clamic/config' ];
then
  mkdir -p '/root/.clamic'
  touch "/root/.clamic/config"
  echo "\e[35m"
  read -p "Room No.: " room
  read -p "Computer No.: " computer
  read -p "Serial No. (as marked on Chassis after S/N): " serial
  echo "\n\e[36mFetching information from bios.\e[35m\n"
  echo "RAM Size (in MB):" >> "/root/.clamic/config"
  sudo dmidecode --type=17 | grep Size | cut -b 8-12 | while read p; do awk '$s+=$p'; done >> "/root/.clamic/config"

#display info
  read -p "Enter Employee Code / Roll No.: " userid
  read -p "Remarks / Complaint: " remarks
  echo "\n\e[36mThanks for registering.\e[39m\n"
  exit
fi
  echo "\e[36mSeems like you are already registered.\e[39m\n"
  exit
echo "\e[39m"
