#!/bin/sh
apps = "i3 rxvt ranger neofetch polybar wal postman compton flameshot code vim npm nodejs slack"

echo updating packages
apt-get update

echo installing default apps
apt-get install $apps -y
