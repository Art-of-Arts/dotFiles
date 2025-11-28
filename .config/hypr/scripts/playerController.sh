#!/usr/bin/env bash

if [[ -z $1 ]]; then
  echo "no option provided"
  exit 1
fi

OPTION="${1,,}"
PLAYER="spotify"
NOTIFCOLOUR="ffb4ff"

#   local title="$(playerctl -p $PLAYER metadata title)"
#   local album="$(playerctl -p $PLAYER metadata album)"
#   local artist="$(playerctl -p $PLAYER metadata artist)"
#   awk -v title="$title" -v artist="$artist" '{printf "%s by %s",title,artist}'
#   return 0
#
function getSongInfo() {
  playerctl -p $PLAYER metadata --format '{{ title }}<==>{{ artist }}' | awk '
    BEGIN {
      FS = "<==>";
      title = "";
      artist = "";
    }
    {
      title = $1
      artist = $2
    }
    END {
      if (title != "" && artist != "") {
            printf "%s by %s", title, artist;
        } else if (title != "") {
            printf "%s", title;
        } else {
            printf "404 No Name";
        }
      }' | tr -d "\n\r"
}

function notifyDecision() {
  sleep .1
  if [[ "$(playerctl -p $PLAYER status)" != "Playing" ]]; then
    hyprctl notify-send -1 5000 "rgb($NOTIFCOLOUR)" "Now Playing: $(getSongInfo)"
  else
    hyprctl notify-send -1 5000 "rgb($NOTIFCOLOUR)" "Current Song: $(getSongInfo)"
  fi
}

hyprctl dismissnotify

case "${OPTION}" in
  play-pause|pause-play)
    playerctl -p $PLAYER play-pause
    notifyDecision
    ;;
  next|skip|forward)
    playerctl -p $PLAYER next
    notifyDecision
    ;;
  previous|back)
    playerctl -p $PLAYER previous
    notifyDecision
    ;;
  shuffle)
    if [[ "$(playerctl -p $PLAYER shuffle)" == "Off" ]]; then
      playerctl -p $PLAYER shuffle on
    else
      playerctl -p $PLAYER shuffle off
    fi
    hyprctl notify-send -1 5000 "rgb($NOTIFCOLOUR)" "Shuffle turned $(playerctl -p $PLAYER shuffle)"
    ;;
  *)
    echo "thats not a valid option silly!"
    exit 1
    ;;
esac
