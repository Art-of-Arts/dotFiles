#!/usr/bin/env bash

sudo /bin/pacman -S --noconfirm --needed hyprland hyprlang hyprlock hyprshot hypridle hyprutils hyprpicker hyprsunset hyprcursor hyprgraphics hyprland-qtutils hyprland-protocols hyprland-qt-support hyprwayland-scanner xdg-desktop-portal-hyprland waybar wofi nwg-displays gimp swaync papirus-icon-theme polkit polkit-gnome jq

if [[ -z "/bin/yay" ]]; then
  if ! [[ "$(cat /etc/hostname)" = "holo-machine" ]]; then
    /bin/yay -S --noconfirm --needed tlpui
  fi
  /bin/yay -S --noconfirm --needed vigiland-git wl-kbptr wlrctl
fi
