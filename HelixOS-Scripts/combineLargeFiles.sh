#!/bin/bash
rootFolder=$PWD/..
while read in; do 
	cd $rootFolder
	ls $(dirname "$in")/.large/$(basename "$in")/$(basename "$in").part* | sort | while read partName; do cat "$partName" >> $in; done
	echo "finished combining $in"
done < ./largeFiles.list
