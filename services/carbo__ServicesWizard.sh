#!/bin/bash
################################################################################
# Carbonara                                                         	       #
# Script: carbo__PerformanceWizard.sh                                          #
# Author: Apollo Alves                                                         #
# Date  : 21/11/2024                                                           #
################################################################################

# Check if the user is root
#source 'carbo__verifyRoot.sh'
clear

MENU='/bin/carbonara.sh'
SERVICEWIZARD='/bin/carbo__ServicesWizard.sh'

echo
LINE_SCRIPT='/bin/carbo__LineScript.sh'

echo -e "\033[1;97;100m        Carbonara          \033[0m\033[1;30;107m         Apollo Alves         \033[1;97;100m        Services Wizard        \033[0m"
echo
echo -e "\033[01;97m Input an option from the menu: \033[0m"
$LINE_SCRIPT
echo
echo -e "\033[01;32m[\033[01;37m 01\033[01;32m ]\033[00;37m - View Services Disabled\033m"
echo -e "\033[01;32m[\033[01;37m 02\033[01;32m ]\033[00;37m - Enable Services of System\033m"
echo -e "\033[01;32m[\033[01;37m 03\033[01;32m ]\033[00;37m - Disabled Services of System\033m"
echo -e "\033[01;32m[\033[01;37m 04\033[01;32m ]\033[00;37m - Start Pipewire All Services\033m"
echo -e "\033[01;32m[\033[01;37m 05\033[01;32m ]\033[00;37m - View Pipewire State All Services Pipewire\033m"
echo -e "\033[01;32m[\033[01;37m 06\033[01;32m ]\033[00;37m - Restart Pipewire All Services Pipewire\033m"
echo -e "\033[01;32m[\033[01;37m 07\033[01;32m ]\033[00;37m - Restart GDM Service\033m"
echo -e "\033[01;32m[\033[01;37m E\033[01;32m ]\033[00;37m  - Exit\033m"
echo
$LINE_SCRIPT

formatted_prompt=$(printf "\e[1;97mInput option :\e[0m ")
read -p "$formatted_prompt" option_choice
$LINE_SCRIPT

valid_option=true

if [ "$option_choice" != "e" ] && [ "$option_choice" != "E" ]; then

    if [ "$valid_option" = true ]; then
        echo -e "\033[05;31mThe option: $option_choice will be executed:\033[00;37m\n"

        case "$option_choice" in

        1)
           carbo__DisabledListServices.sh
	   ;;

        2)
           carbo__EnableServices.sh
           ;;
        3)
           carbo__DisableServices.sh
           ;;
        4)
           carbo__PipewireStartServices.sh
           ;;
 	5)
           carbo__PipewireStateAllServices.sh
           ;;
	6)
           carbo__PipewireRestartAllServices.sh
           ;;
        7)
           carbo__RestartGDMService.sh
           ;;

        *)
            echo -e "\nInvalid input! Please enter the number contained in the menu!.\n"
            ;;
        esac
        read -rsn1 -p "Press any key to continue..."
	$SERVICEWIZARD
    fi
else

$MENU
fi
