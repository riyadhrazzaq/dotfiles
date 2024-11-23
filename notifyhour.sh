#!/bin/bash

while true; do
  # Get the current hour
  current_hour=$(date +"%I")

  # Check if the hour has changed
  if [[ $current_hour != $previous_hour ]]; then
    # Send the notification
    notify-send -e -a "A horror story" "It's now $current_hour $(date +"%p")"

    # Update the previous hour
    previous_hour=$current_hour
  fi

  # Sleep for a minute
  sleep 60
done
