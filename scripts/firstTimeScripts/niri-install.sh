#!/usr/bin/env bash

case "$1" in
help)
  echo "Add --noconfirm to pass it to yay / pacman"
  exit 0
  ;;
help)
  ncflag="--noconfirm"
  ;;
esac

sudo pacman -S $ncflag --needed niri xdg-desktop-portal xdg-desktop-portal-gnome xwayland-satellite swaylock waybar rofi nwg-displays nwg-look swaync polkit polkit-gnome jq ydotool

if [[-z "/bin/yay" ]]; then
  if ! [[ "$(cat /etc/hostname)" = "holo-machine" ]]; then
    /bin/yay -S $ncflag --needed
  fi
  /bin/yay -S $ncflag --needed vigiland-git wl-kbptr noctalia-git
else
  echo "yay not installed, install yay and re-run the script to install packages from the aur"
fi
