#!/bin/bash
MIN_BRIGHTNESS=10

CURRENT_BRIGHTNESS=$(brightnessctl g)
MAX_BRIGHTNESS=$(brightnessctl m)
CURRENT_PERCENTAGE=$((CURRENT_BRIGHTNESS * 100 / MAX_BRIGHTNESS))

if [[ "$1" == "up" ]]; then
    brightnessctl set +5% > /dev/null
elif [[ "$1" == "down" ]]; then
    if (( CURRENT_PERCENTAGE > MIN_BRIGHTNESS )); then
        brightnessctl set 5%- > /dev/null
    fi
fi

if [ $CURRENT_PERCENTAGE -lt 20 ]; then
	BRIGHTNESS_ICON=''
elif [ $CURRENT_PERCENTAGE -lt 50 ]; then
	BRIGHTNESS_ICON=''
elif [ $CURRENT_PERCENTAGE -lt 80 ]; then
	BRIGHTNESS_ICON=''
else
	BRIGHTNESS_ICON=''
fi

echo "${BRIGHTNESS_ICON} $CURRENT_PERCENTAGE%"

