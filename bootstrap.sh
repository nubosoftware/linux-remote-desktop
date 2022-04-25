#!/bin/bash

# run script for linux remote desktop bootstrap

# read command line parameters
TAG=latest
HOME=/opt/nubo
while [[ $# -gt 0 ]]; do
  case $1 in
    -t|--tag)
      TAG="$2"
      shift # past argument
      shift # past value
      ;;
    -h|--home)
      HOME="$2"
      shift # past argument
      shift # past value
      ;;
    *)
      echo "Unknown option $1"
      echo "Usage: bootstrap.sh -t [TAG] -h [Home Folder]"
      exit 1
      ;;
  esac
done

# sudo wrapper
SUDO=$(command -v sudo)
if [ -z "$SUDO" ]; then
      echo "sudo is not present, attempting to use doas..."
      SUDO=$(command -v doas)
      if [ -z "$SUDO" ]; then
            echo "doas is also not present, checking if running as root..."
            if [[ $(id -u) -ne 0 ]]; then
                echo "Running as regular user! Subsequent steps will fail, aborting..."
                exit 4;
            fi
      fi
fi

#check if docker exists
if [ -x "$(command -v docker)" ]; then
    # pull linux-remote-desktop image
    $SUDO docker pull nubosoftware/linux-remote-desktop:$TAG
else
    echo "Docker not found. Please install Docker engine"
    exit 1;
fi

if [ ! -d "/etc/docker" ]
then
    echo "Directory /etc/docker does not exists. Creating it.."
    $SUDO mkdir -p /etc/docker
fi

if [ ! -f /etc/docker/daemon.json ]; then
    echo "Creating default /etc/docker/daemon.json file."
    echo "{ }" > /etc/docker/daemon.json
fi


if [ ! -d "$HOME" ]
then
    echo "Directory $HOME does not exists. Creating it.."
    $SUDO mkdir -p "$HOME"
fi

# run the bootstrap image in loop until we get exit code that is 0 or 1
i="100"
while [ $i -gt 1 ]
do
    $SUDO docker run \
        --rm
        -e DEF_HOSTNAME="$HOSTNAME" \
        -e DOCKER_ENV='YES' \
        -v /etc/docker:/etc/docker \
        -v /var/run/docker.sock:/var/run/docker.sock \
        -v $HOME:$HOME \
        -it nubosoftware/linux-remote-desktop:$TAG node src/nubo-conf.js -p $HOME
    i="$?"
    if [ $i -eq 2 ]
    then
        echo "Reload docker"
        $SUDO systemctl reload docker
    fi
done
