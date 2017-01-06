#!/bin/sh

touchpad=$(xinput | grep "SYNA2B23:00 06CB:2714" | sed 's/^.*id=\([0-9]*\).*$/\1/')
keyboard=$(xinput | grep "AT Translated Set 2 keyboard" | sed 's/^.*id=\([0-9]*\).*$/\1/')
current=$(xrandr -q --verbose | grep "eDP1" | cut -d ' ' -f6)

if [ $current = "normal" ];
then
  xrandr --output eDP1 --rotate inverted
  xinput disable $keyboard
  xinput disable $touchpad
else
  xrandr --output eDP1 --rotate normal
  xinput enable $keyboard
  xinput enable $touchpad
fi

exit 0
