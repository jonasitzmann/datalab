#!/bin/bash

function run {
# what repository do we want to watch (default to origin/master)
if [ -z "$1" ]; then
	repository="origin/master"
else
	repository="$1"
fi
latest_revision="none"

# loop forever, need to kill the process.
while [ 1 ]; do

    # get the latest revision SHA.
    current_revision=`git rev-parse $repository`

    # if we haven't seen that one yet, then we know there's new stuff.
    if [ $latest_revision != $current_revision ]; then
	git pull
    	python run.py
	git add -A
	git commit -m 'autorun'
	git push
    fi
    sleep 60
done
}

if git rev-parse --git-dir > /dev/null 2>&1; then
	(run $1 &)
else
	echo "Error: not a git repository"
fi
