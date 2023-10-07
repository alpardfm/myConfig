#!/usr/bin/sh

while (true); do
	interval=$(cat $(pwd)/.config/i3blocks/scripts/interval.conf)
	date=$(date +%A)

	echo 📅 $date
	sleep $interval
done
