#!/bin/bash

PLAYER="spotify"

hyprctl dismissnotify

if [[ -z $1 ]]; then
  echo "option argument not provided"
  exit 1
elif [[ -z $2 ]]; then
  echo "volume change number not provided"
  exit 1
fi

OPTION=${1,,}
NUM=$2

if [[ "$NUM" -lt 0 ]]; then
  NUM=$(echo "$NUM * -1" | bc)
  NEG=true
fi

case "$OPTION" in
  system)
    if [[ -z "$NEG" ]]; then
      wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ $NUM%+
    else
      wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ $NUM%-
    fi
    hyprctl notify -1 5000 "rgb(ffb4ff)" "$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{ printf "Volume: %.0f%%", $2 * 100 }')"
    ;;
  player)
    if [[ -z "$NEG" ]]; then
      echo "$(playerctl -p $PLAYER volume $(echo "scale=2; $NUM / 100" | bc -l)+)"
    else
      echo "$(playerctl -p $PLAYER volume $(echo "scale=2; $NUM / 100" | bc -l)-)"
    fi
    hyprctl notify -1 5000 "rgb(ffb4ff)" "$(playerctl -p $PLAYER volume | awk '{ printf "Player Volume: %.0f%%", $1 * 100 }')"
    ;;
  *)
    echo "not a valid option, try again nerd!"
    exit 1
    ;;
esac
