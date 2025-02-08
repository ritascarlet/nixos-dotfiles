#!/usr/bin/env bash

status=$(playerctl status 2>/dev/null)
if [[ "$status" == "Playing" ]]; then
    metadata=$(playerctl metadata --format '{{ title }} - {{ artist }}')
    echo " $metadata"
elif [[ "$status" == "Paused" ]]; then
    echo "⏸ Paused"
else
    echo "⏹ Stopped"
fi
