#!/bin/bash

sudo /bin/pacman -Sy --needed --noconfirm cliphist wl-clipboard cmake gcc 7zip ark bitwarden blender btop curl git wget libqalculate ddcutil discover flatpak yazi fakeroot ffmpeg fastfetch ghostty gzip brightnessctl less man-db obs-studio obsidian ttf-cascadia-code openssh playerctl steam spotify-launcher telegram-desktop tmux v4l2loopback-dkms v4l2loopback-utils vlc vlc-plugin-ffmpeg vlc-cli zoxide fzf lsd trash-cli imagemagick wiremix nftables nvim mullvad-vpn ncdu zip unzip jq

if [[ "$(hostnamectl hostname)" == "holo-machine" ]]; then
  sudo /bin/pacman -Sy --needed --noconfirm fprintd tlp
fi

if [[ -f "/bin/yay" ]]; then
  /bin/yay -Sy --needed --noconfirm rose-pine-gtk-theme xwaylandvideobridge rangoli kando-bin arronax dbus_filemanager linux-wallpaperengine-git simple-linux-wallpaperengine-gui-git
  # removed packages: gcalcli

  if [[ "$(hostnamectl hostname)" == "holo-machine" ]]; then
    /bin/yay -Sy --needed --noconfirm tlpui
  else
    /bin/yay -Sy --needed --noconfirm new-lg4ff-dkms-git
  fi
else
  echo "yay not installed, install yay and re-run the script to install packages from the aur"
fi
