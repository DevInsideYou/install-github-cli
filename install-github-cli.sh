#!/bin/bash

# remove yourself
rm $0

FALLBACK_VERSION="0.12.0"

if [ "$1" != "" ]; then
    VERSION="$1"
else
    VERSION=$FALLBACK_VERSION
fi

TARGET="gh_${VERSION}_linux_amd64.deb"
URL="https://github.com/cli/cli/releases/download/v${VERSION}/${TARGET}"

# install curl
sudo apt install -yqqq curl

# download GitHub CLI
sudo curl -L $URL -o $TARGET

# install GitHub CLI
sudo dpkg -i $TARGET

# remove dpkg
rm -f $TARGET

echo
echo '"gh" is now on the path'
