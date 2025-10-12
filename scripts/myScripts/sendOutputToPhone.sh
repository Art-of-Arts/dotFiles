#!/bin/bash

#crl + z, c handler
function suspendHandle() {
 echo "$@"
}

trap "suspendHandle trapping ctrl + z or ctrl + c" 20 2 1 3

pactl get-default-sink > /tmp/PACTL.DEFAULT.SINK
pactl load-module module-null-sink sink_name=Audio-to-phone > /tmp/VSINK.MODULE.ID
pactl set-default-sink Audio-to-phone
# audiorelay $1 & > /tmp/AUDIO.RELAY.PID

notify-send -u low -a 'audiorelay' -t 3 "created virtual sink and opened audiorelay minimized"

echo "press any key when done"
read -n 1

pactl set-default-sink $(cat /tmp/PACTL.DEFAULT.SINK)
pactl unload-module $(cat /tmp/VSINK.MODULE.ID)
# for pid in $(ps -e aux | awk '/audiorelay/ {print $2}'); do kill -9 $pid; done

notify-send -u low -a 'audiorelay' -t 3 "closed audiorelay and virtual sink"
rm /tmp/{PACTL.DEFAULT.SINK,VSINK.MODULE.ID}
