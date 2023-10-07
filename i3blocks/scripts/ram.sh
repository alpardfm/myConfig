#!/usr/bin/sh
while(true); do
	interval=$(cat $(pwd)/.config/i3blocks/scripts/interval.conf)

	echo $(free -h | grep Mem | awk 'FNR=2 {printf "⛽ %sB/%sB", $3,$2}')
	sleep $interval
done
