#!/usr/bin/sh

while(true); do
	stat=$(amixer | grep Mono: | grep Playback | grep %  | awk '{printf "%s", $4}' | awk -F'[][]' '{printf "%s", $2}')
	value=$(amixer | grep Mono: | grep Playback | grep % | awk -F'[][]' '{gsub(/%/, "", $2); split($2, a, " "); printf "%s", a[1]}')
	interval=$(cat $(pwd)/.config/i3blocks/scripts/interval.conf)

	if [ $value -gt 50 ]; then
		echo 🔊 $stat
	elif [ $value -eq 0 ]; then
		echo 🔇 $stat
	elif [ $value -le 50 ]; then
		echo 🔉 $stat
	fi
	sleep $interval
done
