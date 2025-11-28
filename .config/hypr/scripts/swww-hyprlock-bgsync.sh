#!/usr/bin/env bash

BLURSTR=100

if ! [[ -d "/tmp/hyprlock-cache/" ]]; then
  echo "cache directory doesn't exist, making one now."
  mkdir -p "/tmp/hyprlock-cache/"
fi

ffmpeg -i "$(swww query | awk 'BEGIN{FS=": "}{printf $6}')" -y -vf "gblur=sigma=$BLURSTR" -vframes 1 "/tmp/hyprlock-cache/bgframe.jpg"
