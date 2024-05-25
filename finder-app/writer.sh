#!/bin/bash

if [ $# -lt 2 ]
then
	if [ $# -lt 1 ]
	then
		echo please provide writefile and writestr arguments
	else
		echo please provide writestr
	fi
	exit 1
fi
writefile=$1
writestr=$2
dname=$( dirname "$writefile")

if mkdir -p $dname && touch $writefile;
then
	echo $writestr > $writefile
else
	echo creating file is not successful
fi


