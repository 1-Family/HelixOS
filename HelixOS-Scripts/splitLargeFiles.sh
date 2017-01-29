#!/bin/bash
rootFolder=$PWD
while read in; do 
	cd $rootFolder
	fileDir=$(dirname "$in")/.large/$(basename "$in")
	mkdir -p $fileDir; 
	cd $fileDir;
	split -b 49M "$rootFolder"/"$in" $(basename "$in").part;
done < ./largeFiles.list
