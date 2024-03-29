#!/bin/sh

#colors
RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[1;36m'
NC='\033[0m'
YELLOW='\033[1;33m'

#vars
installed=false
install() {
    res=$(nvm install $version)
    sub=$(echo $res | cut -d " " -f 1)
    str=$sub"."
    if [ $str = "Now." ] || [ $str = "Downloading." ]
    then echo 0
    else echo 1
    fi
}
use() {
    nvm use $version
    nvm alias default $version
    installed=true
}

echo "${CYAN} configuring node${NC}"

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

nvm ls-remote

while [ $installed = false ]
do
    echo "${RED}which node version do you want to use?${NC}"
    read version
    res=$(install)
    if [ $res = 0 ]
    then    
        use
    fi
done