#!/bin/bash
########################################################################################################################
#                                                                                                                      #
# SHELLCARE-1.2.1                                                                                                                     #
# THIS PROGRAM CONTAINS ROUTINE AUTOMATION SCRIPTS FOR:                                                                #
#                                                                                                                      #
# FULL KERNEL UPDATE;                                                                                                  #
# COMPLETE UPDATE OF THE LIST OF REPOSITORIES;                                                                         #
# APPLICATION UPDATE VIA FLATPAK UPDATE                                                                                #
# COMPLETE DEVICE DRIVER UPDATE;                                                                                       #
# GRUB UPDATE AFTER KERNEL UPDATE;                                                                                     #
#                                                                                                                      #
# AUTOMATIC REMOVAL AND CORRECTION OF APT/DPKG PACKAGES;                                                               #
# REMOVAL AND CORRECTION OF TRACES OF UNUSED PACKAGES;                                                                 #
# AUTOMATIC REMOVAL OF ORPHANED PACKAGES THAT ONLY OCCUPY SPACES;                                                      #
#                                                                                                                      #
# CLEANING EXCHANGE;                                                                                                   #
# DISK USAGE SPACE SUMMARY;                                                                                            #
#                                                                                                                      #
# IN ADDITION, WE HAVE INCLUDED SCRIPTS TO REMOVE TRACES OF UNUSED DPKGS AND APTS PACKAGES THAT TAKE UP UNNECESSARY    #
# SPACE AND                                                                                                         #
# ALSO REMOVE THE ACCUMULATED KERNEL.                                                                                  #
#                                                                                                                      #
# AUTHOR : APOLLO ALVES                                                                                                                     #
#                                                                                                                      #
########################################################################################################################
# FOR IT TO WORK EFFECTIVELY, WE RECOMMEND INSTALLING SOME DEPENDENCIES:                                               #
########################################################################################################################
# STACER - SYSTEM OPTIMIZER AND MONITOR      #
# HTTPS://GITHUB.COM/OGUZHANINAN/STACER      #
#                                            #
# TRASH-CLI - REMOVAL RUBBISH BIN FILES      #
# HTTPS://GITHUB.COM/ANDREAFRANCIA/TRASH-CLI #
#                                            #
# ORPHANER - REMOVAL OF ORPHAN PACKAGES      #
# SUDO APT INSTALL DEBORPHAN                 #
#                                            #
##############################################

# Instructions:

# 1 - Download the file;
# 2 - Give him execution privileges (X) as root;
# 3 - Move the file to the /bin directory
# 4 - Run the command in the terminal with sudo

##################################################################################################################
#                                                                                                                #
# ATTENTION!                                                                                                     #
#                                                                                                                #
# AT YOUR OWN RISK, WE ARE NOT RESPONSIBLE FOR ANY SYSTEM FAILURES OR DAMAGES THAT MAY OCCUR WITH YOUR GNU/LINUX #
# DISTRIBUTION.                                                                                                  #
#                                                                                                                #
# THE RESOURCE DEVELOPED IN THIS PROJECT IS COMPLETELY OPEN SOURCE, WE DO NOT TOLERATE IMPROPER DISTRIBUTION OR  #
# FOR PROFIT. MODIFY IT AND DISTRIBUTE IT FOR FREE TO EVERYONE!                                                  #
#                                                                                                                #
# WE ENCOURAGE YOU TO FEEL FREE TO FURTHER IMPROVE OUR CODE. AFTER ALL, THAT'S WHAT THE GNU/LINUX UNIVERSE WAS   #
# BORN FOR!                                                                                                      #
#                                                                                                                #
# # GOOD LUCK! GREETINGS!                                                                                        #
##################################################################################################################
# HIGHLIGHTS COMMANDS                                                                                            #
##################################################################################################################
#                                                                                                                #
# PRINT GOOGLE                                                                                                   #
# echo -e '\033[01;34;47mg\033[01;31mo\033[01;33mo\033[01;34mg\033[01;32ml \033[01;31me\033[00;37;40m'           #
#                                                                                                                #
# PRINT FATAL ERROR "RED" - "BLINK"                                                                              #
# echo -e '\033[05;31merro fatal\033[00;37m'                                                                     #
#                                                                                                                #
# PRINT IN "WHITE BOLD UBUNTU" AND "GREEN UNDERSCORE" "FOCAL FOSSA"                                              #
# echo -e '\033[01;37mubuntu \033[04;32mfocal fossa\033[00;37m!!!'                                               #
#
# OK MESSAGE "WHITE BOLD UBUNTU" AND "GREEN UNDERSCORE" "FOCAL FOSSA"                                              #
# echo -e "\n\033[01;37m[\033[00;32m OK\033[00;37m ]\033m\n"
#
# DONE MESSAGE AND "GREEN UNDERSCORE" "FOCAL FOSSA"                                              #
# echo -e "\n\033[01;37m[\033[00;32m done\033[00;37m ]\033m\n"
#
# BACKGROUND IN TEXT
# echo -e "\033[48;8;01;30;100mChoose an option from the menu\033[0m"
#
# BACKGROUND WHITE IN TEXT WHITE
# echo -e "\033[1;48;05;32;100m   Choose an option from the menu  \033[0m"

########################################################################################################################

LINE='line.sh'
echo
echo -e "\033[1;32;02;40;100m         ShellCare System          \033[0m\033[\033[1;40;02;32;107m          Apollo Alves        \033[1;32;02;40;100m     version  2.0.1     \033[0m"
########################################################################################################################

MENU='shellCare-2.0.1.sh'
echo
neofetch
$LINE
echo -e "\033[1;40;02;32;107m   Choose an option from the menu   \033[0m"
$LINE
echo

echo -e "\033[01;32m[\033[01;37m 01\033[01;32m ]\033[00;37m - Update all system packages\033m"
echo -e "\033[01;32m[\033[01;37m 02\033[01;32m ]\033[00;37m - Remove traces of unused packages from the system\033m"
echo -e "\033[01;32m[\033[01;37m 03\033[01;32m ]\033[00;37m - Run both\033m"
echo -e "\033[01;32m[\033[01;37m 04\033[01;32m ]\033[00;37m - Optimize system performance - required sudo\033m"
echo -e "\033[01;32m[\033[01;37m 05\033[01;32m ]\033[00;37m - Swap State\033m"
echo -e "\033[01;32m[\033[01;37m 06\033[01;32m ]\033[00;37m - Disable services natives\033m"
echo -e "\033[01;32m[\033[01;37m 07\033[01;32m ]\033[00;37m - Verify Startup time System \033m"
echo -e "\033[01;32m[\033[01;37m 08\033[01;32m ]\033[00;37m - Create Penguin's Eggs \033m"
echo -e "\033[01;32m[\033[01;37m 09\033[01;32m ]\033[00;37m - Open my Penguin's Eggs Files - broot \033m"
echo -e "\033[01;32m[\033[01;37m 10\033[01;32m ]\033[00;37m - Start volume balancing \033m"
echo -e "\033[01;32m[\033[01;37m 11\033[01;32m ]\033[00;37m - Open CLONRAID backups\033m"
echo -e "\033[01;32m[\033[01;37m 12\033[01;32m ]\033[00;37m - Open STACER \033m"
echo -e "\033[01;32m[\033[01;37m 13\033[01;32m ]\033[00;37m - Replays all of your boot messages 'journalctl -b'"
echo -e "\033[01;32m[\033[01;37m 14\033[01;32m ]\033[00;37m - Check space disks\033m"
echo -e "\033[01;32m[\033[01;37m 15\033[01;32m ]\033[00;37m - Start mysql assistent\033m"
echo -e "\033[01;32m[\033[01;37m 16\033[01;32m ]\033[00;37m - Disable mysql"
echo -e "\033[01;32m[\033[01;37m 17\033[01;32m ]\033[00;37m - Reinstall GNOME gdm3 \033m"
echo -e "\033[01;32m[\033[01;37m 18\033[01;32m ]\033[00;37m - Mount Externl Disks"
echo -e "\033[01;32m[\033[01;37m 19\033[01;32m ]\033[00;37m - Check if a new version of Ubuntu is available \033m"
echo -e "\033[01;32m[\033[01;37m 20\033[01;32m ]\033[00;37m - Reboot System \033m"

echo -e "\033[01;32m[\033[01;37m q\033[01;32m ]\033[00;37m  - QUIT\033m\n"
$LINE

read -p "Chosen option : " option_choice
$LINE

# 1
function updateSystem {
     update.sh
}

# 2
function removePack {

     remove.sh
     remove__oldsnaps.sh
}

# 3
function cleanUpdateSystem {

     echo
     updateSystem.sh
}
# 4
function systemPerformace {

     gnome-terminal --tab -- bash -c "sudo /bin/performance.sh /; exec bash"
}
# 5
function swapState {

     echo -e "\nSwap Sate\n"
     free -h
     $LINE
     echo -e "\n\033[01;37m[\033[00;32m done\033[00;37m ]\033m\n"
     sleep 2
}
# 6
function disableNativeServicesSystem {

     echo -e "\nDisabling natives services system..."
     sudo disable__services.sh
}
# 7
function systemAnalyze {

    systemAnalyse.sh

}
# 8
function eggsCreate {

     eggsCreate.sh
}
# 9
function broot {

     echo -e "\nOpening broot...\n"
     sudo broot -s -p -d --sort-by-date '/mnt/VENTOY/'
     sleep 1
}
# 10
function balanceVolume {

     btrfs_balance.sh
}

# 11
function nautilusDir {

     #####################################################################################################################
     echo -e "\n Opening Nautilus...\n"
     #####################################################################################################################
     sleep 2
     nautilus /mnt/EXT@ST500LM012__CLONRAID/ && >/dev/null
     clear
     echo -e "\n\033[01;37m[\033[00;32m OK\033[00;37m ]\033m\n"
     echo
}
# 12
function stacer {

     sudo stacer.sh
}
# 13
function showJournalctl {

     echo -e "\nLoading journalctl -b...\n"
     sleep 1
     journalctl -b
     echo -e "\n\033[01;37m[\033[00;32m OK\033[00;37m ]\033m\n"
}
# 14
function checkSpace {

     #####################################################################################################################
     echo -e "\n Check spaces...\n"
     #####################################################################################################################
     sleep 1
     df -h / && echo "" && df -h /home && echo "" && df -h /mnt/EXT@ST500LM012__CLONRAID
     echo -e "\n\033[01;37m[\033[00;32m OK\033[00;37m ]\033m\n"

}
# 15
function mysqlAssitent {

     mysql__fix-1.0.sh

}
# 16
function mysqlDisableService {

     echo -e "Disabling mysql service..."
     sudo systemctl disable mysql.service
     sleep 1
     echo -e "\n\033[01;37m[\033[00;32m OK\033[00;37m ]\033m\n"

}

# 17
function gnomeGdm3 {

     echo -e "\n\033[01;32mReinstalling gdm3...\033[00;37m\n"
     sleep 2
     sudo apt install gdm3 -y
     echo -e "\033[01;37m[\033[00;32m all done!\033[01;37m ]\033m\n"
}
# 18
function mountDisk {

     echo -n
     ext__disk-1.0.sh

}
# 19
function releaseUpdateVersion {

     sudo do-release-upgrade
}
# 20
function rebootSystem {
     sudo init 6
}

MENU='shellCare-2.0.1.sh'
valid_option=true

if [ "$valid_option" = true ]; then
     echo -e "\033[05;31mThe option: $option_choice will be executed:\033[00;37m\n"

     case "$option_choice" in

     1)

          updateSystem
          $LINE
          $MENU
          ;;
     2)
          removePack
          $MENU
          ;;
     3)
          cleanUpdateSystem
          $MENU
          ;;
     4)
          systemPerformace
          $MENU
          ;;

     5)
          swapState
          $MENU
          ;;

     6)
          disableNativeServicesSystem
          $MENU
          ;;

     7)
          systemAnalyze
          $MENU
          ;;
     8)
          eggsCreate
          $MENU
          ;;
     9)
          broot
          $MENU
          ;;
     10)
          balanceVolume
          $MENU
          ;;
     11)
          nautilusDir
          $MENU
          ;;
     12)
          stacer
          $MENU
          ;;
     13)
          showJournalctl
          ;;
     14)
          checkSpace
          $MENU
          ;;

     15)
          mysqlAssitent
          $MENU
          ;;
     16)
          mysqlDisableService
          $MENU
          ;;
     17)
          gnomeGdm3
          $MENU
          ;;
     18)
          mountDisk
          $MENU
          ;;
     19)
          releaseUpdateVersion
          $MENU
          ;;
     20)
          rebootSystem
          $MENU
          ;;
     q)
          valid_option=true
          echo
          echo "Exiting the program..."
          echo "Bye!"
          sleep 2
          clear
          ;;
     *)
          echo -e "\nops!\n"
          echo -e "\033[01;05;37m'$option_choice' command not found!\033[00m\n"
          echo -e "Invalid input! Please enter 'y' or 'n'.\n"
          ;;

     esac
     
else
     echo -e "\nops!\n"
     echo -e "\033[01;05;37m'$option_choice' command not found!\033[00m\n"
     echo -e "Invalid input! Please enter 'y' or 'n'.\n"
fi