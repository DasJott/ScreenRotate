#!/bin/sh

if [ "$(whoami)" != "root" ]; then
  echo "Please execute as root"
  exit 1;
fi

# ScreenRotator Script
sudo cp ScreenRotator.desktop ~/.local/share/applications/
sudo cp toggleScreenRotation.sh /usr/local/bin/
sudo cp toggleScreenRotation.png /usr/local/share/icons/

sudo chmod +x /usr/local/bin/toggleScreenRotation.sh
sudo chmod +r /usr/local/share/icons/toggleScreenRotation.png
