#!/usr/bin/sh

while(true); do
	time=$(date +%c)
	zone=$(date +%Z)
	interval=$(cat $(pwd)/.config/i3blocks/scripts/interval.conf)

	echo 📅 $time $zone
	sleep $interval
done
