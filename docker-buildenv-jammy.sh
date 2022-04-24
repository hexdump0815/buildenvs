#!/bin/bash

if [ "$(uname -m)" = "armv7l" ] || [ "$(uname -m)" = "aarch64" ] || [ "$(uname -m)" = "x86_64" ]; then
  cd docker-jammy
  docker build --no-cache -t buildenv-jammy .
else
  echo ""
  echo "arch is $(uname -m) - only armv7l, aarch64 and x86_64 are supported"
  echo ""
  exit 1
fi
