#! /bin/bash

lst=$(playerctl -l)

condition=$(diff <(echo "$(playerctl -l | awk -F '\n' '{print $1}')" | head -1) <(echo "$(playerctl -l | awk -F '\n' '{print $1}')" | head -2))

if test -z "$condition"; then
	playerctl previous
else
	chosen=$(playerctl -l | rofi -dmenu)
	playerctl -p $chosen previous
fi
