#!/bin/bash
###############################################
# Author: Shreya Singh
# Date: 20/02/2024
#
# This script outputs the node health
#
# Version: v1
##############################################

set -x   #debug mode it is better than using Print and echo statement everytime
set -e   #exits the script
set -o pipefail

df -h

free -g

nproc

ps -ef | grep amazon | awk -F" " '{print $2}'

