#!/bin/bash

option=$(printf " Documents\n Pictures\n Music\n Poweroff\n Lock\n Suspend\n Reboot" | rofi -dmenu)

if [[ $option == " Documents" ]]; then
    thunar $(xdg-user-dir DOCUMENTS)
elif [[ $option == " Pictures" ]]; then
    thunar $(xdg-user-dir PICTURES)
elif [[ $option == " Music" ]]; then
    thunar $(xdg-user-dir MUSIC)
elif [[ $option == " Poweroff" ]]; then
    systemctl poweroff
elif [[ $option == " Lock" ]]; then
    swaylock
elif [[ $option == " Suspend" ]]; then
    systemctl suspend
elif [[ $option == " Reboot" ]]; then
    reboot
fi