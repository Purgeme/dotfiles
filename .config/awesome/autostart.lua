local awful = require("awful")

autorun = true

autorunShellCmds = 
{
     "wal --backend colorz -i ~/wallpapers/wallpaper23.png",
     "picom --experimental-backends",
     "synclient TapButton1=1 TapButton2=3 TapButton3=2 HorizTwoFingerScroll=1 CircularScrolling=0 SingleTapTimeout=210 PalmDetect=1 PalmMinz=150 PalmMinWidth=5",
     "lsusb | grep -i mouse && synclient TouchpadOff=1",
	 "feh --bg-scale ~/wallpapers/wallpaper23.png"

}

if autorun then
	for app = 1, #autorunShellCmds do
		awful.spawn.with_shell(autorunShellCmds[app])
	end
end
