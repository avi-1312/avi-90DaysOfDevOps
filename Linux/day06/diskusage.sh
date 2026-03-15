#!/bin/bash


THRESHOLD=80

df -h | grep -vE 'filesystem|tmpfs|cdrom' | while read line

do 
	usage=$(echo $line |awk '{print $5}' | sed 's/%/ /g')
	partition=$(echo $line | awk '{print $6}')

	if [[ "$usage" -ge "$THRESHOLD" ]]; then
		echo " Warning: Disk Usage on $partition is ${usage}%"
	fi
done

