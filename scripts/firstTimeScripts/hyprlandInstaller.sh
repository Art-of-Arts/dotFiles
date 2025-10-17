#!/bin/bash

# function __ROOTPWASK() {
#   if $(sudo whoami); then
#     while true; do sudo -v &>/dev/null; sleep 240; done &
#   else
#     echo "wrong password?"
#     __ROOTPWASK
#   fi
# }
# 
# if ! [[ $(whoami) = "root" ]]; then
#   __ROOTPWASK # gets the root password and re-auths every 4 mins if download takes longer than that
# fi
 

sudo /bin/pacman -S --noconfirm --needed hyprland hyprlang hyprlock hyprshot hypridle hyprutils hyprpicker hyprsunset hyprcursor hyprgraphics hyprpolkitagent hyprland-qtutils hyprland-protocols hyprland-qt-support hyprwayland-scanner xdg-desktop-portal-hyprland waybar wofi nwg-displays gimp swaync papirus-icon-theme

if [[ -z "/bin/yay" ]]; then
  if ! [[ "$(cat /etc/hostname)" = "holo-machine" ]] ; then
    /bin/yay -S --noconfirm --needed tlpui
  fi
  /bin/yay -S --noconfirm --needed xdg-desktop-portal-termfilechooser-hunkyburrito-git
fi
