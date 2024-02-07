#!/bin/bash
#
# Runs the docker container

ws_host_dir=$(realpath ${DIR}/../../)

IMAGE="blakerbuchanan/btcpp-example-ros1-image"
TAG=0.0.1
DETACHED=""

CONTAINER_CMD='/bin/bash'
docker run \
    --privileged \
    --name btcpp_example_ros1 \
    --hostname "$(hostname)-btcpp_example_ros1" \
    --restart always \
    $DETACHED \
    -it \
    --network host \
    --platform linux/amd64 \
    -v "${ws_host_dir}":/workspaces:rw \
    "${IMAGE}:${TAG}" "${CONTAINER_CMD}"