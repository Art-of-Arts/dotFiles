#!/usr/bin/env bash

BLURSTR=60

if ! [[ -d "/tmp/hyprlock-cache/" ]]; then
  echo "cache directory doesn't exist, making one now."
  mkdir -p "/tmp/hyprlock-cache/"
fi

ffmpeg -i "$(swww query | awk 'BEGIN{FS=": "}NR==1{printf $6}')" -y -vf "gblur=sigma=$BLURSTR" -vframes 1 "/tmp/hyprlock-cache/bgframe.jpg"
