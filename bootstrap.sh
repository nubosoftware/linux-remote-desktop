#!/bin/bash

# run script for linux remote desktop bootstrap

#check if docker exists
if [ -x "$(command -v docker)" ]; then
    # pull latest nubo-bootstrap image
    sudo docker pull nubosoftware/nubo-bootstrap:latest
else
    echo "Docker not found. Please install Docker engine"
    exit 1;
fi

if [ ! -d "/etc/docker" ] 
then   
    echo "Directory /etc/docker does not exists. Creating it.."
    sudo mkdir -p /etc/docker
fi

if [ ! -d "/opt/nubo" ] 
then   
    echo "Directory /opt/nubo does not exists. Creating it.."
    sudo mkdir -p /opt/nubo
fi

# run the bootstrap image in loop until we get exit code that is 0 or 1
i="100"
while [ $i -gt 1 ]
do
    sudo docker run \
        -e DEF_HOSTNAME="$HOSTNAME" \
        -e DOCKER_ENV='YES' \
        -v /etc/docker/daemon.json:/etc/docker/daemon.json \
        -v /var/run/docker.sock:/var/run/docker.sock \
        -v /opt/nubo:/opt/nubo \
        -it nubosoftware/linux-remote-desktop:latest
    i="$?"
    if [ $i -eq 2 ] 
    then 
        echo "Reload docker"
        sudo systemctl reload docker
    fi
done