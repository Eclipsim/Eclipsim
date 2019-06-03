#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-eclipsimpay/eclipsimd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/eclipsimd docker/bin/
cp $BUILD_DIR/src/eclipsim-cli docker/bin/
cp $BUILD_DIR/src/eclipsim-tx docker/bin/
strip docker/bin/eclipsimd
strip docker/bin/eclipsim-cli
strip docker/bin/eclipsim-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
