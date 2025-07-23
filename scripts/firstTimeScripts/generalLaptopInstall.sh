#!/bin/bash

sudo /bin/pacman -S --needed --noconfirm tlp

if [[ -f "/bin/yay" ]]; then
  yay -S --needed --noconfirm tlp
else
  echo "yay not installed, install yay and re-run the script"
fi
