#!/bin/bash

cd docker-bookworm
docker build --no-cache -t buildenv-bookworm .
