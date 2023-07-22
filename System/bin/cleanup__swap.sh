#!/bin/bash

#####################################################################
#                                                                   #
# Script: cleanup__swap.sh                                          #
# Author: Apollo Alves                                              #
# Date: 22/07/2023                                                  #
#                                                                   #
#####################################################################


MENU="shellCare-22.0.1.sh"
SWAPPINESS=$(cat /proc/sys/vm/swappiness)
LINE='line.sh'
YES="y"
NO="n"

# Function to calculate size in GiB or MB
function calculate_size() {
    local size_in_kb=$1
    if (( size_in_kb >= 1024 )); then
        echo "$(( size_in_kb / 1024 )) GiB"
    else
        echo "$size_in_kb MB"
    fi
}

# Check if the user is root
if [[ $EUID -ne 0 ]]; then
    echo "This script needs to be run as root." 
    exit 1
fi

echo
read -rp 'Would you like to remove all contents of swap? (y/n): ' removeSwap

case "$removeSwap" in
    "$YES")
        echo -e '\nAttention all data contained will be lost! And other running processes may be affected.'
        echo -e 'Please save all your work before continuing.\n'
        read -rp 'Do you really want to proceed (y/n)? ' proceed

        case "$proceed" in
            "$YES")
                echo -e "\n\033[01;32mCleaning Swap...\033[00;37m\n"
                # Get the occupied space before cleaning
                used_before=$(free -k | awk '/^Swap:/ {print $3}')
                echo "Used swap space before: $(calculate_size $used_before)"
                
                sudo swapoff -a 
                echo -e "\n\033[01;37m\033[01mwait...\033[00;37m\033[00m\n"
                sudo dd if=/dev/zero of=/dev/md127p4 bs=1M 
                sudo swapon -a
                
                removed_space=$((used_before - used_after))
                echo "Removed swap space: $(calculate_size $removed_space)"

                echo -e "\n\033[01;37m[\033[00;32m Swap data was cleaned \033[01;37m ]\033m\n"
                echo
                echo -e "\033[01;32mActivating swap...\033[00;37m\n"
                sudo swapon -a -v
                sudo sysctl -w vm.swappiness=10
                echo 
                free -h
                echo 
                echo -e "swappiness set: $SWAPPINESS"
                echo -e "\n\033[01;37m[\033[00;32m Swap is active now!\033[01;37m ]\033m\n"
                ;;
            "$NO")
                echo "Operation aborted!"
                ;;
            *)
                echo -e "\nInvalid input! Please enter 'y' or 'n'.\n"
                ;;
        esac
        ;;
    "$NO")
        echo "Operation skipped!"
        ;;
    *)
        echo -e "\nInvalid input! Please enter 'y' or 'n'.\n"
        ;;
esac