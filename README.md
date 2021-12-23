# Linux Remote Desktop

This project creates a secure, open source, multi-tenant environment for remote work.
Users in your organization can access a remote Linux OS based workspace, run applications, as well as access other important resources. The remote environment is based on a docker container, is efficient and scalable, and can be deployed to an unlimited number of users. A web admin control panel is available to allow admins to control the organization's environment.

The project is based on many open source projects, such as:
 - [xrdp](https://github.com/neutrinolabs/xrdp) - an open source RDP server
 - [Apache Guacamole](https://guacamole.apache.org/) -  clientless remote desktop gateway
 - [Nubo](https://nubosoftware.com/) - Secure remote environment 
 - [Ubuntu Xrdp](https://github.com/danielguerra69/ubuntu-xrdp) - multi user remote desktop Server in docker container.
 
 
## Getting Started

### Create your first linux remote desktop system in a single server.

#### Running the bootstrap script using docker.

Required: Linux system with docker engine installed.

Copy & paste the following on your terminal:

> sudo curl -L https://github.com/nubosoftware/linux-remote-desktop/releases/download/0.8.2/bootstrap.sh -o /usr/local/bin/nubo-bootstrap.sh ; sudo chmod +x /usr/local/bin/nubo-bootstrap.sh ; sudo /usr/local/bin/nubo-bootstrap.sh
