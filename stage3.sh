#!/bin/bash
# Import current stage3 then tagit

set -x
set -e


MIRROR_PREFIX="${MIRROR_PREFIX:-ftp://ftp.iij.ad.jp/pub/linux/gentoo/releases/amd64/autobuilds/current-stage3-amd64}"
WORKDIR="/tmp/gentoo-docker-work-$(date +%s)"
REPO="${1:-quay.io/sorah/gentoo-stage3}"

mkdir $WORKDIR && cd $WORKDIR

wget "${MIRROR_PREFIX}"'/stage3-amd64-20*.tar.bz2'

FILE="$(ls -1 stage3-*)"
VERSION="$(ls -1 stage3-* | cut -d- -f 3 | cut -d. -f 1)"

if [ -n "${SKIP_SAME}" ]; then
  if docker pull ${REPO}:${VERSION}; then
    set +x
    echo "already built, skipping"
    exit
  fi
fi
docker import - ${REPO}:${VERSION} < ${FILE}
docker tag -f ${REPO}:${VERSION} ${REPO}:latest

if [ -n "${NO_PUSH}" ]; then exit; fi

docker push ${REPO}:${VERSION}
docker push ${REPO}:latest
