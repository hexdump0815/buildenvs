#!/bin/bash

if [ "$(uname -m)" = "armv7l" ]; then
  DOCKERFILE="Dockerfile.arm"
elif [ "$(uname -m)" = "aarch64" ]; then
  DOCKERFILE="Dockerfile.arm"
elif [ "$(uname -m)" = "x86_64" ]; then
  DOCKERFILE="Dockerfile.x86_64"
else
  echo ""
  echo "arch is $(uname -m) - only armv7l, aarch64 and x86_64 are supported"
  echo ""
  exit 1
fi

cd docker-archlinuxarmv
docker build --no-cache -t buildenv-archlinuxarm -f $(DOCKERFILE) .
