#!/bin/bash


echo "System Information"

echo "-------------------"


Name=$(whoami)

Date=$(date)	
	
echo "Hello $Name"

echo "Today is $Date"

echo "Current User"
whoami

echo "Current Date"
date

echo "Hostname:"
hostname

echo "Disk Usage:"
df -h


