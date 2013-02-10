#!/bin/sh
#
# Note, this will remove /Applications/Chromium.app
#

rm -f chrome-mac.zip chrome-mac
export CHROME_VERSION=`curl http://commondatastorage.googleapis.com/chromium-browser-continuous/Mac/LAST_CHANGE`
wget http://commondatastorage.googleapis.com/chromium-browser-continuous/Mac/$CHROME_VERSION/chrome-mac.zip
unzip chrome-mac.zip
rm -rf /Applications/Chromium.app
mv chrome-mac/Chromium.app /Applications/Chromium.app
rm -rf chrome-mac chrome-mac.zip
