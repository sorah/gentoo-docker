#!/bin/bash
# build base image from stage3, then squash

set -x
set -e

REPO="${1:-quay.io/sorah/gentoo-base}"
RAWREPO="${1:-quay.io/sorah/gentoo-base-unsquashed}"
VERSION="$(TZ=UTC date '+%Y%m%d%H%M%S')"

docker build -t ${RAWREPO}:${VERSION} base
TMPCONTAINER="$(docker run -d ${RAWREPO}:${VERSION} sleep 12h)"

docker export ${TMPCONTAINER} | docker import - ${REPO}:${VERSION}

docker stop -t 1 ${TMPCONTAINER}
docker rm ${TMPCONTAINER}

docker tag -f ${RAWREPO}:${VERSION} ${RAWREPO}:latest
docker tag -f ${REPO}:${VERSION} ${REPO}:latest

exit

docker push ${RAWREPO}:${VERSION}
docker push ${RAWREPO}:latest

docker push ${REPO}:${VERSION}
docker push ${REPO}:latest
