#!/bin/bash

# see man zscroll for documentation of the following parameters
zscroll -l 30 \
        --delay 0.1 \
        --match-command "bash /home/bbn/.config/polybar/other_scripts/polybar-spotify/spotify_status.sh" \
        --match-text "Playing" "--scroll 1" \
        --match-text "Paused" "--scroll 0" \
        --update-check true '/home/bbn/.config/polybar/other_scripts/polybar-spotify/get_spotify_status.sh' &

wait
