#!/bin/bash

# run script for nubo bootstrap

#check if docker exists
if [ -x "$(command -v docker)" ]; then
    # pull latest nubo-bootstrap image
    sudo docker pull nubosoftware/nubo-bootstrap:latest
else
    echo "Docker not found. Please install Docker engine"
    exit 1;
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
        -it nubosoftware/nubo-bootstrap:latest
    i="$?"
    if [ $i -eq 2 ] 
    then 
        echo "Reload docker"
        sudo systemctl reload docker
    fi
done