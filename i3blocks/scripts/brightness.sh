#!/usr/bin/sh

while (true); do
	stat=$(expr $(cat /sys/class/backlight/intel_backlight/brightness) / $(expr $(cat /sys/class/backlight/intel_backlight/max_brightness) / 100))
	icon='🌝'
	interval=$(cat $(pwd)/.config/i3blocks/scripts/interval.conf)

	echo $icon $stat%

	sleep $interval

done
