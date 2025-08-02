#!/bin/bash

if [[ -z $1 ]]; then
  echo "no option provided"
  exit 1
fi

OPTION="${1,,}"
PLAYER="spotify"

function getSongInfo() {
  local title="$(playerctl -p $PLAYER metadata title)"
  local album="$(playerctl -p $PLAYER metadata album)"
  local artist="$(playerctl -p $PLAYER metadata artist)"
  awk -v title="$title" -v artist="$artist" '{printf "%s by %s",title,artist}'
}

hyprctl dismissnotify

case "$OPTION" in
  play-pause)
    # playerctl -p $PLAYER play-pause
    echo "not done yet"
    ;;
  next)
    # playerctl -p $PLAYER next
    echo "not done yet"
    ;;
  previous)
    # playerctl -p $PLAYER previous
    printf "Now playing: %s","$(getSongInfo)"
    ;;
  *)
    echo "thats not a valid option silly!"
    exit 1
    ;;
esac
