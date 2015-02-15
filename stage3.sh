#!/bin/bash
# Import current stage3 then tagit

set -x
set -e

MIRROR_PREFIX="${MIRROR_PREFIX:-ftp://ftp.iij.ad.jp/pub/linux/gentoo/releases/amd64/autobuilds/current-stage3-amd64}"
WORKDIR="/tmp/gentoo-docker-work-$(date +%s)"
REPO="${1:-quay.io/sorah/gentoo-stage3}"

mkdir $WORKDIR && cd $WORKDIR

wget 'ftp://ftp.iij.ad.jp/pub/linux/gentoo/releases/amd64/current-iso/stage3-amd64-20*.tar.bz2'

FILE="$(ls -1 stage3-*)"
VERSION="$(ls -1 stage3-* | cut -d- -f 3 | cut -d. -f 1)"

docker import - ${REPO}:${VERSION} < ${FILE}
docker tag ${REPO}:${VERSION} ${REPO}:latest
docker push ${REPO}:${VERSION}
docker push ${REPO}:latest
