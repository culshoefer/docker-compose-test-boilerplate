#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker run -v $DIR/application/postman-collections:/etc/newman -t postman/newman_ubuntu1404 \
       run HTTPBinNewmanTest.json.postman_collection \
       --testReportFile="newman-results.xml" \
       --html="newman-results.html" \
       --reporter-junit-no-assertions \
       --reporter-cli-no-assertions \
