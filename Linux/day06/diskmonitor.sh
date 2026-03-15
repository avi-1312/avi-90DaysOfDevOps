#!/bin/bash


THRESHOLD=80
LOGFILE="/var/log/disk-monitor.log"

df -hP | grep -vE '^filesystem|tmpfs|cdrom' | while read line 

do 
	usage=$(echo $line | awk '{print $5}' | sed 's/%/ /g')
	partition=$(echo $line | awk '{print $6}')

	if [[ "$usage" -ge "$THRESHOLD" ]]; then
		MESSAGE="$(date) Warning: disk on $partition is ${usage}%"

		echo $MESSAGE
		echo $MESSAGE >> $LOGFILE
	fi
done

