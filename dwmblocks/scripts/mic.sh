#!/bin/bash

MIC_STATE=$(amixer get Capture | grep '\[on\]' | wc -l)

if [ "$MIC_STATE" -gt 0 ]; then
    echo "Unmuted"
else
    echo "Muted"
fi

