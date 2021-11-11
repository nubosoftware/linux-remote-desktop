#!/bin/bash

# build the bootstrap docker container


VER="$(npm pkg get version | tr -d '"')"
echo "Building image linux-remote-desktop:$VER"
docker build . -t linux-remote-desktop:$VER --build-arg ARCH=amd64
echo "Publish to docker hub"
docker tag linux-remote-desktop:$VER nubosoftware/linux-remote-desktop:$VER
docker push nubosoftware/linux-remote-desktop:$VER
docker tag linux-remote-desktop:$VER nubosoftware/linux-remote-desktop:latest
docker push nubosoftware/linux-remote-desktop:latest