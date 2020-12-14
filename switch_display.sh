#!/bin/bash

choises="laptop\nHDMI"

chosen=$(echo -e "$choises" | dmenu -i -l 20)

case "$chosen" in
  laptop) xrandr --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP1 --off --output HDMI1 --off --output HDMI2 --off --output VIRTUAL1 --off ;;
  HDMI) xrandr --output eDP1 --primary --mode 1920x1080 --pos 0x1080 --rotate normal --output DP1 --off --output HDMI1 --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI2 --off --output VIRTUAL1 --off ;;
esac
