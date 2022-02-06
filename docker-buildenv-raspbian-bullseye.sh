#!/bin/bash

WORKDIR=`dirname $0`
cd $WORKDIR

if [ "$(uname -m)" = "armv7l" ]; then
  BOOTSTRAP_ARCH="armhf"
elif [ "$(uname -m)" = "aarch64" ]; then
  BOOTSTRAP_ARCH="arm64"
else
  echo ""
  echo "arch is $(uname -m) - only armv7l and aarch64 are supported"
  echo ""
  exit 1
fi

mkdir -p ${WORKDIR}/root
debootstrap --variant=minbase --arch=${BOOTSTRAP_ARCH} --no-check-gpg bullseye ${WORKDIR}/root http://archive.raspbian.org/raspbian
tar -C ${WORKDIR}/root -c . | docker import - raspbian-bullseye

cd docker-raspbian-bullseye
docker build --no-cache -t buildenv-raspbian-bullseye .
