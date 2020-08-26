#! /bin/bash

chosen="$(playerctl -l | rofi -dmenu)"

playerctl -p $chosen play-pause
