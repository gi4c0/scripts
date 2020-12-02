#!/bin/bash
# Script takes a screenshot by scrot, makes it unreadable and put provided 
# as argument image to center. Then locks screen with this image

scrot /tmp/screen.png
convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
[[ -f $1 ]] && convert /tmp/screen.png $1 -gravity center -composite -matte /tmp/screen.png
i3lock -u -i /tmp/screen.png
rm /tmp/screen.png
