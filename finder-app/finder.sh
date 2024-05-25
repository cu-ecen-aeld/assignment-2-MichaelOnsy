#!/bin/bash

if [ $# -lt 2 ]
then
	if [ $# -lt 1 ]
	then
		echo "filesdir and searchstr are not provided"
	else
		echo "searchstr is not provided"
	fi
	exit 1
fi
filedir=$1
searchstr=$2
if ! [ -d $filedir ]
then
	echo directory not found
	exit 1
fi
filesCount=$( find $filedir -type f | wc -l )
lines=$( cat $( find $filedir -type f ) | grep $searchstr | wc -l )

echo "The number of files are $filesCount and the number of matching lines are $lines"
