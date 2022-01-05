#!/bin/bash

# build the bootstrap docker container

TAG=latest

while [[ $# -gt 0 ]]; do
  case $1 in
    -t|--tag)
      TAG="$2"
      shift # past argument
      shift # past value
      ;;
    *)
      echo "Unknown option $1"
      exit 1
      ;;
  esac
done


VER="$(npm pkg get version | tr -d '"')"
echo "Building image linux-remote-desktop:$VER"
docker build . -t linux-remote-desktop:$VER --build-arg ARCH=amd64
echo "Publish to docker hub"
docker tag linux-remote-desktop:$VER nubosoftware/linux-remote-desktop:$VER
docker push nubosoftware/linux-remote-desktop:$VER
docker tag linux-remote-desktop:$VER nubosoftware/linux-remote-desktop:$TAG
docker push nubosoftware/linux-remote-desktop:$TAG
