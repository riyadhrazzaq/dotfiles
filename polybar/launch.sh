#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch a Polybar bar
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar mainbar 2>&1 | tee -a /tmp/topbar.log & disown
echo "Bars launched..."
