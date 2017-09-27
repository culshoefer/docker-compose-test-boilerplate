#!/bin/bash

function supress { /bin/rm --force /tmp/surpress.out 2> /dev/null; $* 2>&1 > /tmp/supress.out || cat /tmp/supress.out; /bin/rm /tmp/supress.out; }

supress ./build-docker-dev.sh
rm -rf application/test-results
mkdir -p application/test-results
docker run -P -v $(pwd)/application/test-results:/usr/src/app/test-results -e USERID=$UID culshoefer/docker-compose-boilerplate-dev:latest
