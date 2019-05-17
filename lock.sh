#!/bin/bash

#dependancy : scrot
# bind with bindsym Ctrl+Mod1+l exec ~/your_path/lock.sh

IMAGE="/tmp/lockscreen.png"

scrot $IMAGE

#BLURTYPE="0x5" # 7.52s
#BLURTYPE="0x2" # 4.39s
#BLURTYPE="5x2" # 3.80s
BLURTYPE="2x8" # 2.90s
#BLURTYPE="2x3" # 2.92s
#BLURTYPE="4x8"

convert $IMAGE -resize 50%
convert $IMAGE -blur $BLURTYPE $IMAGE
convert $IMAGE -resize 200%

i3lock -i /tmp/lockscreen_blur.png
