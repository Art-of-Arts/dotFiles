#!/bin/bash

sudo /bin/pacman -S --needed --noconfirm cliphist wl-clipboard cmake gcc 7zip ark bitwarden blender btop curl git wget libqalculate ddcutil discover flatpak yazi fakeroot ffmpeg fastfetch ghostty gzip gvim brightnessctl less man-db obs-studio obsidian openssh playerctl steam spotify-launcher swaync telegram-desktop tmux v4l2loopback-dkms v4l2loopback-utils vlc vlc-cli zoxide fzf direnv lsd trash-cli

if [[ "$(hostnamectl hostname)" = "holo-machine" ]]; then
  sudo /bin/pacman -S tlp fprintd
fi

if [[ -f "/bin/yay" ]]; then
  /bin/yay -S --needed --noconfirm tlp audiorelay rose-pine-gtk-theme xwaylandvideobridge rangoli kando-bin
else
  echo "yay not installed, install yay and re-run the script"
fi
