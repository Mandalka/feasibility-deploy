#!/usr/bin/env sh

COMPOSE_PROJECT=codex-deploy

BASE_DIR="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

# Set Docker Image Versions
. $BASE_DIR/../../../set-image-versions.sh

docker-compose -p $COMPOSE_PROJECT -f $BASE_DIR/docker-compose.yml down -v
docker-compose -p $COMPOSE_PROJECT -f $BASE_DIR/docker-compose.yml up -d
