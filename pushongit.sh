#!/bin/bash
format=.giti
filename=./.gitignore
if [ ! -f "$filename" ]; then
	touch $filename
	echo "*$format" > $filename
else
	if ! grep -qw "*$format" $filename; then
  		echo "*$format" >> $filename
	fi
fi
filename=./lastcommit$format
if [ ! -f "$filename" ]; then
	touch $filename
	echo 0 > $filename
fi
numbercommit=$(<$filename)
echo $numbercommit
((numbercommit++))
message="Commit ${numbercommit} ($(date +%F_%T))"
git add . && git commit -m "$message" && git push && echo $numbercommit > $filename