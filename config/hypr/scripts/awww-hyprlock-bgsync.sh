#!/usr/bin/env bash

BLURSTR=60

if ! [[ -d "/tmp/wallpaper/" ]]; then
  echo "cache directory doesn't exist, making one now."
  mkdir -p "/tmp/wallpaper/"
fi

ffmpeg -i "$(swww query | awk 'BEGIN{FS=": "}NR==1{printf $6}')" -y -vf "gblur=sigma=$BLURSTR" -vframes 1 "/tmp/wallpaper/bgframe.jpg"
