#!/bin/bash

set -e

# echo "=> stage3"
# SKIP_SAME=1 ./stage3.sh

echo "=> base"
./base.sh

echo "=> flavored"
./flavored.sh
