#!/usr/bin/env sh

windowID=$(niri msg windows | awk -v APPID=$1 '
/^Window ID/ {
  if (block ~ APPID) print block
  block = ""
}
{ block = block $0 "\n" }
END {
  if (block ~ /$APPID/) print block
  }' | awk '/Window ID/ { gsub(":", "", $3); print $3 }')

niri msg action focus-window --id $windowID
