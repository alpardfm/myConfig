#!/usr/bin/sh

while (true); do

	capacity=$(cat /sys/class/power_supply/BAT1/capacity)
	stat=$(cat /sys/class/power_supply/BAT1/status)
	all="$capacity%"
	statusIconCharging='⚡'
	statusIconDischarging='❄'
	statusIcon='💻'

	interval=$(cat $(pwd)/.config/i3blocks/scripts/interval.conf)

	if [ "$stat" = "Discharging" ]; then
		echo $statusIconDischarging $all
	elif [ "$stat" = "Charging" ]; then
		echo $statusIconCharging $all
	else
		echo $statusIcon $all	
	fi
	sleep $interval
done
