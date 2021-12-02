#!/bin/sh

screens=`xrandr | grep ' connected' | grep 'HDMI' | awk '{print $1}'`

if [ "$screens" = "HDMI1" ]; 
then
   xrandr --output DP1 --off --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VGA1 --mode 1366x768 --pos 1920x0 --rotate normal --output VIRTUAL1 --off
fi

cbatticon &

volumeicon &

picom &

nm-applet &

nitrogen --restore
