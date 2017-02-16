#!/bin/bash
sourceBranch=origin/$ghprbSourceBranch
command="git rev-parse $sourceBranch"
sha=`$command`
context=$1
state=$2
description=$3
curl -X POST -H "Authorization: token $(cat ~/jenkins-scripts/access_token.txt)" \
	https://api.github.com/repos/$ghprbGhRepository/statuses/$sha -d "{\
		\"state\": \"$state\", \
		\"target_url\": \"${BUILD_URL}\", \
		\"description\": \"$description\", \
		\"context\": \"$context\" \
	}" > /dev/null 2>&1

