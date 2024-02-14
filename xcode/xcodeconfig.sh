#!/bin/sh
# Ensure current user is a member of "developer" group
/usr/sbin/dseditgroup -o edit -a everyone -t group _developer
# Enable Developer Mode
/usr/sbin/DevToolsSecurity -enable
# Install Xcode Select
xcode-select --install
# Accept the license
/Applications/Xcode.app/Contents/Developer/usr/bin/xcodebuild -license accept
# Install embedded packages
for PKG in `/bin/ls /Applications/Xcode.app/Contents/Resources/Packages/*.pkg` ; do
  /usr/sbin/installer -pkg "$PKG" -target /
done
