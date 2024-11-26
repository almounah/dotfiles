#!/bin/bash

# Terminate already running bar instances
killall -q polybar


for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar top --config=~/.config/polybar/config_top.ini &
    MONITOR=$m polybar bottom --config=~/.config/polybar/config_bottom.ini &
done
