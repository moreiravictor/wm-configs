#!/bin/sh
apps = "i3 rxvt ranger neofetch polybar compton flameshot code vim npm"

echo updating packages
apt-get update

echo installing default apps
apt-get install $apps -y