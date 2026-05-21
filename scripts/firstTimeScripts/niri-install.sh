#!/usr/bin/env bash

sudo pacman -S --noconfirm --needed niri xdg-desktop-portal xdg-desktop-portal-gnome xwayland-satellite swaylock

if [[-z "/bin/yay" ]]; then
  if ! [[ "$(cat /etc/hostname)" = "holo-machine" ]]; then
    /bin/yay -S --noconfirm --needed tlpui
  fi
  /bin/yay -S --noconfirm --needed vigiland-git wl-kbptr
fi
