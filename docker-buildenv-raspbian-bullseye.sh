#!/bin/bash

WORKDIR=`dirname $0`
cd $WORKDIR

# debootstrap is required for the following to work, so lets install it
export DEBIAN_FRONTEND=noninteractive && apt-get -yq install debootstrap

if [ "$(uname -m)" = "armv7l" ]; then
  BOOTSTRAP_ARCH="armhf"
else
  echo ""
  echo "arch is $(uname -m) - only armv7l is supported"
  echo ""
  exit 1
fi

mkdir -p ${WORKDIR}/root
debootstrap --variant=minbase --arch=${BOOTSTRAP_ARCH} --no-check-gpg bullseye ${WORKDIR}/root http://archive.raspbian.org/raspbian
tar -C ${WORKDIR}/root -c . | docker import - raspbian-bullseye

cd docker-raspbian-bullseye
docker build --no-cache -t buildenv-raspbian-bullseye .
