#!/bin/bash

set -e

pylint application --disable=fixme --disable=line-too-long || true
pylint application --disable=fixme --disable=line-too-long --output-format=parseable > test-results/pylint.log || true
./rundjangotests.sh
# pep8 .

exit 0
