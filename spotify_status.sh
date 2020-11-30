#!/bin/bash

istatus=`playerctl --player=playerctld status 2>&1`
retval=$?

if [ "$istatus" = "Stopped" ]; then
    echo "No music is playing"
elif [ "$retval" -eq 1 ]; then
    echo "No music is playing"
elif [ "$istatus" = "Paused"  ]; then
    echo $istatus 
else # Can be configured to output differently when player is paused
    echo $istatus 
fi
