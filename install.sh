#!/bin/sh

if [ "$(whoami)" != "root" ]; then
  echo "Please execute as root"
  exit 1;
fi

# ScreenRotator Script
cp ScreenRotator.desktop ~/.local/share/applications/
cp toggleScreenRotation.sh /usr/local/bin/
cp toggleScreenRotation.png /usr/local/share/icons/

