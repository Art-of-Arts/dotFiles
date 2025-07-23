#!/bin/bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# Airplane Mode. Turning on or off all wifi using rfkill. 
# moded by yours truely, this is not leaving my systems i don't know why i'm tagging this :p

notif="$HOME/.config/swaync/images/ja.png"
notifID=$(cat $HOME/scripts/systemScripts/

# Check if any wireless device is blocked
wifi_blocked=$(rfkill list wifi | grep -o "Soft blocked: yes")

if [ -n "$wifi_blocked" ]; then
    rfkill unblock wifi
    notify-send -u low -i "$notif" " Airplane" " mode: OFF"
else
    rfkill block wifi
    notify-send -u low -i "$notif" " Airplane" " mode: ON"
fi
