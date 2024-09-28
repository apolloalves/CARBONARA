#!/bin/bash
#########################################################################
#                                                                       #
# Script: scripts.sh - Script Execution                                 #           
#                                                                       #
# Author: Apollo Alves                                                  #
# Date: 10/12/2023                                                      #
#                                                                       #
#########################################################################

#########################################################################################################################
#                                                                                                                       #
# This script, named "scripts.sh," maintains an organized list of scripts to be executed.                               #
# Each script is represented as an element in the 'scripts' array, facilitating easy maintenance and addition/removal   #
# of                                                                                                                    #
# scripts.                                                                                                              #
#                                                                                                                       #
# Observations about the script:                                                                                        #
# 1. **Organization:**                                                                                                  #
# - Scripts are organized in an array named 'scripts,' making maintenance and modification straightforward.             #
# 2. **Comments:**                                                                                                      #
# - Includes an initial comment with basic information about the purpose, author, and creation date.                    #
# - Could benefit from additional comments to explain each script individually or group related scripts.                #
# 3. **Script Execution:**                                                                                              #
# - Some elements in the array represent composite scripts, where multiple scripts are executed sequentially.           #
# - Efficient approach for grouping related scripts and ensuring orderly execution.                                     #
# 4. **Simple Maintenance:**                                                                                            #
# - The array structure makes it easy to add, remove, or modify scripts without altering the logic of the main script.  #
# 5. **Finalization:**                                                                                                  #
# - Does not contain direct execution commands for the listed scripts. It may be part of a broader script that iterates #
# - over the list and executes each script.                                                                             #
# 6. **Possible Improvement:**                                                                                          #
# - Could include logic to check the existence of scripts before execution, avoiding errors if any script is missing.   #
# Overall, it is a useful script for managing the execution of various related scripts, simplifying the automation of   #
# system maintenance tasks.                                                                                             #
#                                                                                                                       #
#########################################################################################################################

scripts=(
    
    #option 1
    "optimize__performance.sh"
    #option 2 
    "remove__traces.sh"
    #option 3
    "update__system.sh;remove__system.sh"
    #option 4

    #option 5
    "stacer__tools.sh"
    #option 6
    "swap__state.sh"
    #option 7
    "system__analyse.sh"
    #option 8
    "show__journalctl.sh"
    #option 9
    "disable__services.sh"
    #option 10
    "disabled__ListServices.sh"
    #option 11
    "mount__extDisks.sh"
    #option 12
    "check__space.sh"
    #option 13
    "eggs__wizard.sh"
    #option 14
    "clonraid__backups.sh"
    #option 15
    "apititude__manager.sh"
    #option 16
    "software__properties.sh"
    #option 17
    "reinstall__gnome-gdm3.sh"
    #option 18
    "mysql__fix-1.0.sh"
    #option 19
    "release__upgrade.sh"
    #option 20
    "virtualbox_services.sh"
    #option 21
    "report.sh"
    #option 22
    "reboot__system.sh"
)