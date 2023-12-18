#!/bin/bash
width=$(tput cols)
text=$(figlet -f $HOME/oh-my-fish/.config/font.flf -w $width $2)
if [ $1 = "-1" ]; then
top_left="╔"
top_right="╗"
middle_="║"
center="═"
bottom_left="╚"
bottom_right="╝"
fi
if [ $1 = "-2" ]; then
top_left="┌"
top_right="┐"
middle_="│"
center="─"
bottom_left="└"
bottom_right="┘"
fi
if [ $1 = "-3" ]; then
top_left="╭"
top_right="╮"
middle_="│"
center="─"
bottom_left="╰"
bottom_right="╯"
fi
frame_width=$((width - 4))
top_bottom="$top_left$(printf "$center%.0s" $(seq 1 $frame_width))$top_right"
bottom="$bottom_left$(printf "$center%.0s" $(seq 1 $frame_width))$bottom_right"

echo "$top_bottom"
while IFS= read -r line; do
if [ $((width % 2)) -eq 0 ]; then
    middle="$middle_$(printf ' %.0s' $(seq 1 $(((frame_width - ${#line}) / 2))))$(echo -e "$3$line\e[0m")$(printf ' %.0s' $(seq 1 $(((frame_width - ${#line}) / 2)))) $middle_"
else
    middle="$middle_$(printf ' %.0s' $(seq 1 $(((frame_width - ${#line}) / 2))))$(echo -e "$3$line\e[0m")$(printf ' %.0s' $(seq 1 $(((frame_width - ${#line}) / 2))))$middle_"
fi
    echo "$middle"
done <<< "$text"

echo "$bottom"
