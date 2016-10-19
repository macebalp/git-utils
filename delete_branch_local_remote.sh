#!/bin/bash

if [ -z "$1" ]
then
	echo "Branch name not given"
	exit 1
fi

echo "Deleting branch: $1"
git branch -d $1; git push origin ":$1"
