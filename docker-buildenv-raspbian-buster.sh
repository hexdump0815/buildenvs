#!/bin/bash

WORKDIR=`dirname $0`
cd $WORKDIR

WORKDIR=`dirname $0`
cd $WORKDIR

if [ "$(uname -m)" = "armv7l" ]; then
  BOOTSTRAP_ARCH="armhf"
else
  echo ""
  echo "arch is $(uname -m) - only armv7l is supported"
  echo ""
  exit 1
fi

mkdir -p ${WORKDIR}/root
debootstrap --variant=minbase --arch=${BOOTSTRAP_ARCH} --no-check-gpg buster ${WORKDIR}/root http://archive.raspbian.org/raspbian
tar -C ${WORKDIR}/root -c . | docker import - raspbian-buster

cd docker-raspbian-buster
docker build --no-cache -t buildenv-raspbian-buster .
