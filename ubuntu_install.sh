#!/bin/sh

#colors
RED='\033[0;31m'
PURPLE='\033[0;32m'
CYAN='\033[1;36m'
NC='\033[0m'
YELLOW='\033[1;33m'

#vars
user=$(whoami)
APT_APPS="i3 rxvt ranger neofetch compton flameshot vim npm nodejs slack"
SNAP_APPS="code postman wal polybar discord"

#commands
echo "${PURPLE}hey there! everything is gonna be setup 4u, $user <3${NC}"

echo "${CYAN}updating packages${NC}"

apt-get update

echo "${YELLOW}installing apt apps${NC}"
apt-get install $APT_APPS -y

echo "${YELLOW}installing snap apps${NC}"
snap install $SNAP_APPS -y
