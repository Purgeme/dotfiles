#! /usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

run wal --backend colorz -i ~/wallpapers/wallpaper23.png &
run picom --experimental-backends &
run synclient TapButton1=1 TapButton2=3 TapButton3=2 HorizTwoFingerScroll=1 CircularScrolling=0 SingleTapTimeout=210 PalmDetect=1 PalmMinz=150 PalmMinWidth=5 &
run lsusb | grep -i mouse && synclient TouchpadOff=1 &
run feh --bg-scale ~/wallpapers/wallpaper23.png &
run ibus-daemon -drx
