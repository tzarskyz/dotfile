#!/bin/sh
#
# Note, this will remove /Applications/Chromium.app
#

echo '..'
rm -f chrome-mac.zip chrome-mac
export CHROME_VERSION=`curl http://commondatastorage.googleapis.com/chromium-browser-continuous/Mac/LAST_CHANGE`
echo "   latest version: $CHROME_VERSION"
echo '..'
export CHROME_OLD_VERSION=`cat ~/dotfile/CHROME_VERSION`
if [ $CHROME_VERSION == $CHROME_OLD_VERSION ]; then
	echo '   latest version!'
	echo '..'
	exit 2
fi
echo $CHROME_VERSION > ~/dotfile/CHROME_VERSION
echo "   save latest version: $CHROME_VERSION"
echo '..'
echo "   get latest version: $CHROME_VERSION"
echo '..'
wget http://commondatastorage.googleapis.com/chromium-browser-continuous/Mac/$CHROME_VERSION/chrome-mac.zip
echo "   compile latest version: $CHROME_VERSION"
echo '..'
unzip chrome-mac.zip
rm -rf /Applications/Chromium.app
echo "   install latest version: $CHROME_VERSION"
echo '..'
mv chrome-mac/Chromium.app /Applications/Chromium.app
rm -rf chrome-mac chrome-mac.zip
killall -9 Chromium
open /Applications/Chromium.app
echo 'DONE'
