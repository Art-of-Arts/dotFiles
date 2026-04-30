#!/usr/bin/env sh

if [ ! -d "/tmp/wallpaper/" ]; then mkdir "/tmp/wallpaper"; fi
ghostty --command="yazi ~/Pictures/ --chooser-file /tmp/wallpaper/wallLocation"
awww img "$(cat /tmp/wallpaper/wallLocation)"
systemctl --user start swww-hyprlock-bgsync.service
rm /tmp/wallpaper/wallLocation
