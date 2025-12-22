#!/bin/bash

# ===== Color definitions =====
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
MAGENTA="\e[35m"
CYAN="\e[36m"
BOLD="\e[1m"
RESET="\e[0m"

clear

# ===== Header =====
echo -e "${BOLD}${CYAN}"
echo "=================================="
echo "        🌈 COLORFUL BASH 🌈        "
echo "=================================="
echo -e "${RESET}"

# ===== Greeting =====
echo -e "${GREEN}Hello, $(whoami)!${RESET}"
echo -e "${YELLOW}Welcome to your colorful terminal ✨${RESET}"
echo

# ===== System info =====
echo -e "${BLUE}🖥  System Info:${RESET}"
echo -e "${MAGENTA}OS:${RESET} $(uname -s)"
echo -e "${MAGENTA}Kernel:${RESET} $(uname -r)"
echo -e "${MAGENTA}Uptime:${RESET} $(uptime -p)"
echo

# ===== Loading animation =====
echo -ne "${CYAN}Loading magic"
for i in {1..5}; do
  echo -ne "."
  sleep 0.4
done
echo -e " done! ✨${RESET}"
echo

# ===== Footer =====
echo -e "${BOLD}${GREEN}Have a great day hacking the terminal! 😄${RESET}"
