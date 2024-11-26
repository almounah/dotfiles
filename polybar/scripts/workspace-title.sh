#!/bin/bash

WM_DESKTOP=$(xdotool getwindowfocus)

if [ "$WM_DESKTOP" != "1883" ]; then
    app_name=$(xprop -id "$WM_DESKTOP" WM_CLASS | awk -F'"' '{print $4}')
fi
echo " $app_name"
