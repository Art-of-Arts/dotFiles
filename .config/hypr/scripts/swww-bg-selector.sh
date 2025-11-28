#!/usr/bin/env bash


ghostty --command="yazi ~/Pictures/ --chooser-file /tmp/hyprlock-cache/wallLocation"
swww img "$(cat /tmp/hyprlock-cache/wallLocation)"
systemctl --user start swww-hyprlock-bgsync.service
rm /tmp/hyprlock-cache/wallLocation
