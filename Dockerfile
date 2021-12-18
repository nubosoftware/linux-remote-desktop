FROM ubuntu:20.04
RUN apt-get -y update
# install linux packages
RUN apt install -y \
    curl

#install node js 14.x
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
RUN apt install -y nodejs

#install docker-ce-cli
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
RUN echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
RUN apt update -y ; apt install -y docker-ce-cli

RUN curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" \
  -o /usr/local/bin/docker-compose ; chmod +x /usr/local/bin/docker-compose

ADD bin /usr/bin
COPY root /opt/nubo-bootstrap
RUN mkdir /opt/nubo-conf
COPY package.json /opt/nubo-conf
COPY src /opt/nubo-conf/src
RUN cd /opt/nubo-conf ; npm install

# Docker config
VOLUME ["/opt/nubo"]
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
CMD ["node","src/nubo-conf.js", "-p" ,"/opt/nubo"]
