#!/bin/sh

# Get the volume percentage
vol=$(amixer sget Master | awk -F"[][]" '/dB/ { print $2 }')

# Check if muted
mute=$(amixer get Master | grep '\[off\]')

if [ -n "$mute" ]; then
    echo "Muted"
else
    echo "$vol"
fi
