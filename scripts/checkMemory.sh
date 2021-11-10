#!/bin/bash

max=85.0

currentUsage=$(free -k | grep Mem | awk '{print $3/$2 * 100.0}')
result=$(echo "$currentUsage > $max" | bc )


if [ 1 -eq $result ]
then
	notify-send "please check ram use" $currentUsage  -i "$(pwd)/scripts/alert.png"
fi
