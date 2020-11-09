#!/bin/bash
min=$1
seconds=`echo "$min*60" | bc`
loop=1
while [ 1 ]; do
	echo "----------Timer #$loop----------"
	for (( i=$seconds; i>0; i--)); do
	  tmp_min=`echo "$i/60" | bc`
	  tmp_sec=`echo "$i%60" | bc`
	  sleep 1 &
	  printf "Timer for $min min running... \t\t $tmp_min:$tmp_sec \r"
	  wait
	done
	notify-send -t 10000 "Timer Completed" "for $min minutes"
	notify-send -t 10000 "Timer Completed" "for $min minutes"
	notify-send -t 10000 "Timer Completed" "for $min minutes"
	notify-send -t 10000 "Timer Completed" "for $min minutes"
	notify-send -t 10000 "Timer Completed" "for $min minutes"
	# getting active browser using pgrep
	brave_count=$(pgrep -c brave)
	firefox_count=$(pgrep -c firefox)
	chromium_count=$(pgrep -c chromium)
	if (( $brave_count > 0 )); then
		brave 'web.whatsapp.com'
	elif (( $chromium_count > 0  )); then
		chromium 'web.whatsapp.com'
	else
		firefox web.whatsapp.com
	fi
	loop=$((loop + 1))
done
