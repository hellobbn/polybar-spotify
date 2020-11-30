#!/bin/bash

istatus=`playerctl --player=playerctld status 2>&1`
retval=$?

if [ "$istatus" = "Stopped" ]; then
    echo "No music is playing"
elif [ "$retval" -eq 1 ]; then
    echo "No music is playing"
elif [ "$istatus" = "Paused"  ]; then
    polybar-msg -p "$(pgrep -f "polybar now-playing")" hook spotify-play-pause 2 1>/dev/null 2>&1
    playerctl --player=playerctld metadata --format "{{ title }} - {{ artist }}"
else # Can be configured to output differently when player is paused
    polybar-msg -p "$(pgrep -f "polybar now-playing")" hook spotify-play-pause 1 1>/dev/null 2>&1
    playerctl --player=playerctld metadata --format "{{ title }} - {{ artist }}"
fi
