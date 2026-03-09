#!/usr/bin/env sh


HYPRLAND_DEVICE="elan-touchpad"

if [ -z "$XDG_RUNTIME_DIR" ]; then
  export XDG_RUNTIME_DIR="/run/user/$(id -u)"
fi

export STATUS_FILE="$XDG_RUNTIME_DIR/touchpad.status"

enable_touchpad() {
  echo "true" >"$STATUS_FILE"
  hyprctl dismissnotify
  hyprctl notify 1 5000 "rgb(a6da95)" "Trackpad enabled"
  hyprctl keyword "device[$HYPRLAND_DEVICE]:enabled" true
}

disable_touchpad() {
  echo "false" >"$STATUS_FILE"
  hyprctl dismissnotify
  hyprctl notify 1 5000 "rgb(ed8796)" "Trackpad disabled"
  hyprctl keyword "device[$HYPRLAND_DEVICE]:enabled" false
}

if ! [ -f "$STATUS_FILE" ]; then

  INITIAL_STATE=$(hyprctl -j devices | jq -r --arg device "$HYPRLAND_DEVICE" '.[] | select(.name == $device) | .enabled')

  if [ "$INITIAL_STATE" = "true" ]; then
    enable_touchpad
  else
    disable_touchpad
  fi

else

  if [ "$(cat "$STATUS_FILE")" = "true" ]; then
    disable_touchpad
  elif [ "$(cat "$STATUS_FILE")" = "false" ]; then
    enable_touchpad
  fi

fi
