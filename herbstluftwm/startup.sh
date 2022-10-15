#!/bin/bash
notify-send "executing ./startup"
alsactl restore
xfce4-clipman &
nm-applet &
~/.config/polybar/launch.sh --forest &
picom &
~/.fehbg &
xautolock -time 10 -locker 'i3lock -i ~/codes/external/polybar-themes/wallpapers/bg_13_2\ \(copy\ 1\).png' -notify 10 -notifier dunstify &> /dev/null
