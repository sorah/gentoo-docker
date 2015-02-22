#!/bin/bash

set -x
set -e

REPO="${1:-quay.io/sorah/gentoo-flavored}"
HEAD="$(git rev-parse HEAD)"
VERSION="$(TZ=UTC date '+%Y%m%d%H%M%S')-${HEAD}"

docker build -t ${REPO}:${VERSION} flavored

docker tag -f ${REPO}:${VERSION} ${REPO}:${HEAD}
docker tag -f ${REPO}:${VERSION} ${REPO}:latest

if [ -n "${NO_PUSH}" ]; then exit; fi

docker push ${REPO}:${VERSION}
docker push ${REPO}:${HEAD}
docker push ${REPO}:latest
