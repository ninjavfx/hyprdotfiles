#!/usr/bin/env bash
# Manage logout with wofi
option=`echo -e "\tlock screen\n\tlogout\n\treboot\n\tpoweroff\n\tsuspend\n\tKill user $USER" | wofi -W 400 -H 350 -dmenu -p system:`
case $option in
    $'\tsuspend')
        sudo  /usr/bin/systemctl suspend
        ;;
    $'\tlock screen')
        hyprlock
        ;;
    $'\tlogout')
        #i3-nagbar -t warning -m 'Are you sure you  want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'
        hyprctl dispatch exit
        ;;
    $'\treboot')
        /usr/bin/systemctl reboot
        ;;
    $'\tpoweroff')
        /usr/bin/systemctl poweroff
        ;;
    $'\tkill user $USER')
        loginctl kill-user $USER
        ;;
esac
