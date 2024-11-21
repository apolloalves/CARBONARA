#!/bin/bash
#############################################################################################
# Carbonara                                                                                 #
# Script: carbo__MenuItem.sh                                                                #
# Author: Apollo Alves                                                                      #
# Date: 21/11/2024                                                      		    #
# 											    #
# Description:                                                                              #
# This bash script provides a menu with various system-related options for easy management. #
# Each option corresponds to a specific task, such as updating system packages,             #
# optimizing performance, checking system boot time, disabling native services, and more.   #                                                                                           #
#############################################################################################

LINE='/bin/carbo__LineScript.sh'
echo -e "\n\033[1;97;100m              Carbonara           \033[0m\033[1;30;107m          Apollo Alves         \033[1;97;100m    OS: Arch Linux x86_64      \033[0m"

echo
neofetch
$LINE
echo -e "\033[01;97m Enter a menu option: \033[0m"
$LINE
echo
echo -e "\033[1;36m[\033[0m 01\033[1;36m ]\033[0m Penguin's Eggs Wizard"
echo -e "\033[1;36m[\033[0m 02\033[1;36m ]\033[0m Rsync Backup System"
echo -e "\033[1;36m[\033[0m 03\033[1;36m ]\033[0m Open Clonraid Backups"
echo -e "\033[1;36m[\033[0m 04\033[1;36m ]\033[0m Check Space Disks"
echo -e "\033[1;36m[\033[0m 05\033[1;36m ]\033[0m Optimize System Performance Wizard"
echo -e "\033[1;36m[\033[0m 06\033[1;36m ]\033[0m Verify Startup time System"
echo -e "\033[1;36m[\033[0m 07\033[1;36m ]\033[0m Boot messages wizard ( journalctl -b )"
echo -e "\033[1;36m[\033[0m 08\033[1;36m ]\033[0m List of disabled services"
echo -e "\033[1;36m[\033[0m 09\033[1;36m ]\033[0m Report"
echo -e "\033[1;36m[\033[0m 10\033[1;36m ]\033[0m Services Wizard"
echo -e "\033[1;36m[\033[0m 11\033[1;36m ]\033[0m Clear Rubbish bin"
echo -e "\033[1;36m[\033[0m 12\033[1;36m ]\033[0m Reboot System"
echo -e "\033[1;36m[\033[0m E\033[1;36m  ]\033[0m EXIT\n"




