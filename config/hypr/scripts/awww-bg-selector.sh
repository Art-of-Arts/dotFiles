#!/usr/bin/env bash

ghostty --command="yazi ~/Pictures/ --chooser-file /tmp/wallpaper/wallLocation"
swww img "$(cat /tmp/wallapper/wallLocation)"
systemctl --user start swww-hyprlock-bgsync.service
rm /tmp/wallpaper/wallLocation
