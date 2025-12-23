#!/bin/bash

sudo /bin/pacman -Sy --needed --noconfirm cliphist wl-clipboard cmake gcc 7zip ark bitwarden blender btop curl git wget libqalculate ddcutil discover flatpak yazi fakeroot ffmpeg fastfetch ghostty gzip gvim brightnessctl less man-db obs-studio obsidian openssh playerctl steam spotify-launcher swaync telegram-desktop tmux v4l2loopback-dkms v4l2loopback-utils vlc vlc-cli zoxide fzf direnv lsd trash-cli imagemagick wiremix tlp nftables 

if [[ "$(hostnamectl hostname)" = "holo-machine" ]]; then
  sudo /bin/pacman -Sy --needed --noconfirm fprintd tlp
fi

if [[ -f "/bin/yay" ]]; then
  /bin/yay -Sy --needed --noconfirm rose-pine-gtk-theme xwaylandvideobridge rangoli kando-bin gcalcli arronax dbus_filemanager tlpui mullvad-vpn-bin

  if [[ "$(hostnamectl hostname)" = "holo-machine" ]]; then
    /bin/yay -Sy --needed --noconfirm tlpui
  else
    /bin/yay -Sy --needed --noconfirm new-lg4ff-dkms-git
  fi
else
  echo "yay not installed, install yay and re-run the script"
fi
