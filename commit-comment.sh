#!/bin/bash
sha=$ghprbActualCommit
echo "sha : "$sha
curl -X POST -H "Authorization: token $(cat ~/jenkins-scripts/access_token.txt)" \
	https://api.github.com/repos/$ghprbGhRepository/commits/$sha/comments -d "{\
		\"body\": \"$(cat $1)\" \
	}"
