#!/bin/bash
# Termux Lock Screen 🔐
# Password: 123456

# --------------------------
# Colors for styling
# --------------------------
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
CYAN="\e[36m"
MAGENTA="\e[35m"
RESET="\e[0m"

# --------------------------
# Assets folder (optional)
# --------------------------
ASSETS="$PWD/assets"   # Folder for optional sounds/images

# --------------------------
# Header function
# --------------------------
header() {
    clear
    echo -e "${MAGENTA}╔══════════════════════════════╗${RESET}"
    echo -e "${CYAN}       🔐 Termux Lock Screen 🔐      ${RESET}"
    echo -e "${MAGENTA}╚══════════════════════════════╝${RESET}"
    echo ""
}

# --------------------------
# Sound alert function (optional)
# --------------------------
play_sound() {
    if [ -f "$ASSETS/alert.mp3" ]; then
        # Play sound if mpv is installed
        command -v mpv >/dev/null 2>&1 && mpv --no-terminal "$ASSETS/alert.mp3" >/dev/null 2>&1
    fi
}

# --------------------------
# Lock screen function
# --------------------------
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
        play_sound
        sleep 1
        lock_screen
    fi
}

# --------------------------
# Start lock screen
# --------------------------
lock_screen