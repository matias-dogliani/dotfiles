#!/bin/bash
ICON="$HOME/.config/i3/icons/lock.png"
IMG=/tmp/screen.png

scrot -o $IMG 
convert $IMG -scale 10% -scale 1000% $IMG
convert $IMG $ICON  -gravity center -composite -matte $IMG
i3lock -u -i $IMG
rm $IMG


#[[ -f $1 ]] && convert /tmp/screen.png $1 -gravity center -composite -matte /tmp/screen.png
