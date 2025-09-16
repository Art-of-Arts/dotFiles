#!/bin/bash

if $(nmcli connection up Bruh337\ 5GHz --ask &> /dev/null <<< gwd7tbdqVfZx); then
  notify-send --transient -a "wifi-script" -u normal "connected to Bruh337 5GHz"
  exit 0
else
  printf "failed to connect to Bruh337 5GHz\n"
fi

if $(nmcli connection up Bruh337\ 2.4GHz --ask &> /dev/null <<< gwd7tbdqVfZx); then
  notify-send --transient -a "wifi-script" -u normal "connected to Bruh337 2.4GHz\n"
  exit 0
else
  printf "failed to connect to Bruh337 2.4GHz\n"
fi

if $(nmcli connection up Slav\ WiFi --ask &> /dev/null <<< weslav.com); then
  notify-send --transient -a "wifi-script" -u normal "connected to Slav WiFi\n"
  exit 0
else
  printf "failed to connect to Slav WiFi\n"
fi

notify-send --transient -a "wifi-script" -u normal "could not connect to any known networks"

exit 1
