#!/usr/bin/env bash

sudo pacman -S --noconfirm --needed niri xdg-desktop-portal xdg-desktop-portal-gnome xwayland-satellite swaylock waybar rofi nwg-displays swaync polkit polkit-gnome jq ydotool

if [[-z "/bin/yay" ]]; then
  if ! [[ "$(cat /etc/hostname)" = "holo-machine" ]]; then
    /bin/yay -S --noconfirm --needed
  fi
  /bin/yay -S --noconfirm --needed vigiland-git wl-kbptr
else
  echo "yay not installed, install yay and re-run the script to install packages from the aur"
fi
