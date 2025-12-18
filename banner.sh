#!/bin/bash
# Permanent Banner for Termux

# Trap CTRL+C, CTRL+Z, and other interrupts
trap '' SIGINT SIGTERM SIGTSTP

# Clear screen
clear

# Loop forever to keep banner visible
while true; do
    echo -e "\e[0;37m"
    echo
    echo -e " \e[1;32m  ░██████╗░██╗░░░██╗██╗░░░░░██╗░░░░░  ██╗░░██╗██╗░░██╗░█████╗░███╗░░██╗ \e[0m"
    echo -e " \e[1;32m  ██╔════╝░██║░░░██║██║░░░░░██║░░░░░  ██║░██╔╝██║░░██║██╔══██╗████╗░██║ \e[0m"
    echo -e " \e[1;32m  ██║░░██╗░██║░░░██║██║░░░░░██║░░░░░  █████═╝░███████║███████║██╔██╗██║ \e[0m"
    echo -e " \e[1;32m  ██║░░╚██╗██║░░░██║██║░░░░░██║░░░░░  ██╔═██╗░██╔══██║██╔══██║██║╚████║ \e[0m"
    echo -e " \e[1;32m  ╚██████╔╝╚██████╔╝███████╗███████╗  ██║░╚██╗██║░░██║██║░░██║██║░╚███║ \e[0m"
    echo -e " \e[1;32m  ░╚═════╝░░╚═════╝░╚══════╝╚══════╝ ╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚══╝  \e[0m"
    echo
    sleep 1
    clear
done