#!/bin/bash
# Termux Lock Screen 🔐
# Password: 123456

RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
CYAN="\e[36m"
MAGENTA="\e[35m"
RESET="\e[0m"

header() {
    clear
    echo -e "${MAGENTA}╔══════════════════════════════╗${RESET}"
    echo -e "${CYAN}       🔐 Termux Lock Screen 🔐      ${RESET}"
    echo -e "${MAGENTA}╚══════════════════════════════╝${RESET}"
    echo ""
}

lock_screen() {
    header
    read -sp "Enter Password 🔑: " password
    echo ""
    if [ "$password" == "123456" ]; then
        echo -e "${GREEN}Access Granted ✅${RESET}"
        sleep 1
        clear
    else
        echo -e "${RED}Access Denied ❌ Try Again!${RESET}"
        sleep 1
        lock_screen
    fi
}

lock_screen
