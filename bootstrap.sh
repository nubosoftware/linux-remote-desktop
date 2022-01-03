#!/bin/bash

# run script for linux remote desktop bootstrap

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
    # pull latest linux-remote-desktop image
    $SUDO docker pull nubosoftware/linux-remote-desktop:latest
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


if [ ! -d "/opt/nubo" ] 
then   
    echo "Directory /opt/nubo does not exists. Creating it.."
    $SUDO mkdir -p /opt/nubo
fi

# run the bootstrap image in loop until we get exit code that is 0 or 1
i="100"
while [ $i -gt 1 ]
do
    $SUDO docker run \
        -e DEF_HOSTNAME="$HOSTNAME" \
        -e DOCKER_ENV='YES' \
        -v /etc/docker:/etc/docker \
        -v /var/run/docker.sock:/var/run/docker.sock \
        -v /opt/nubo:/opt/nubo \
        -it nubosoftware/linux-remote-desktop:latest
    i="$?"
    if [ $i -eq 2 ] 
    then 
        echo "Reload docker"
        $SUDO systemctl reload docker
    fi
done
