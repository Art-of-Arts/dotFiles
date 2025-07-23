#!/bin/bash

if [[ "$(playerctl -p spotify status)" = "Playing" ]]; then
  playerctl -p spotify pause
  hyprctl dismissnotify
  hyprctl notify -1 5000 "rgb(4a0404)" "Spotify Paused"
else
  playerctl -p spotify play
  TITLE = "$(playerctl -p spotify metadata title)"
  ARTIST = "$(playerctl -p spotify metadata artist)"
  hyprctl dismissnotify
  hyprctl notify -1 5000 "rgb(b4ffb4" "Now Playing: $TITLE by $ARTIST"
fi
