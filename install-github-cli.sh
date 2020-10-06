#!/bin/bash

# remove yourself
rm $0

FALLBACK_VERSION="1.1.0"

if [ "$1" != "" ]; then
    VERSION="$1"
else
    VERSION=$FALLBACK_VERSION
fi

TARGET="gh_${VERSION}_linux_amd64.deb"
URL="https://github.com/cli/cli/releases/download/v${VERSION}/${TARGET}"

# download GitHub CLI
curl -L $URL -o $TARGET

# install GitHub CLI
sudo dpkg -i $TARGET

# remove dpkg
rm -f $TARGET

echo
gh --version

echo
echo '"gh" is now on the path'
