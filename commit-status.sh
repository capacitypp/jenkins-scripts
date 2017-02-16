#!/bin/bash
#sha=`git log | grep commit | sed -n 2p | sed 's/commit //g'`
sha=$ghprbActualCommit
echo "sha : "$sha
context=$1
state=$2
description=$3
curl -X POST -H "Authorization: token $(cat ~/jenkins-scripts/access_token.txt)" \
	https://api.github.com/repos/$ghprbGhRepository/statuses/$sha -d "{\
		\"state\": \"$state\", \
		\"target_url\": \"${BUILD_URL}\", \
		\"description\": \"$description\", \
		\"context\": \"$context\" \
	}"
