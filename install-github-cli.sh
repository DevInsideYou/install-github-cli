#!/bin/bash

# remove yourself
rm $0

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages
sudo apt update
sudo apt install gh

echo
gh --version

echo
echo '"gh" is now on the path'
