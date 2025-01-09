#!/usr/bin/env bash

# Add this script to your wm startup file.

DIR="$HOME/.config/polybar/material"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
# CONFIG_DIR="$DIR/config.ini"
# if type "xrandr"; then
# 	for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
# 		MONITOR=$m polybar -r -c $CONFIG_DIR main &
# 	done
# else
# 	polybar -r -c $CONFIG_DIR main &
# fi

polybar -q main -c "$DIR"/config.ini &
polybar -q main -c "$DIR"/config-2.ini &
