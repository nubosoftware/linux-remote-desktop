# Building and Running from Source Code

The Linux Remote Desktop project consists of several components. Each component is actually a seperate github project that is built into a docker image.

A Docker Compose file (located in the root folder) is used to configure the containers, based on the docker images.
After building the docker images, you can copy the root folder to the target server(s), configure the docker-compose.yml file to use the built images, and start all containers by entering:
`docker-compose up -d`

## Main Components

### Management
Github's project: [Management](https://github.com/nubosoftware/nubomanagement).
The management component:
* Is the main orchestrator that manages all the other components. It authneticates users and handles the lifecycle of the users' sesssions.
* Connects to MySQL database to access persistent data (e.g. user credentials) and Redis data store to access non-persistent data (e.g. current loggged-in users).
* Is based on node.js and is a stateless service, so you can have mutiple instances running for scalability and availability.

### Frontend
Github's project: [Frontend](https://github.com/nubosoftware/frontend).
The frontend component:
* Is the only component that has direct access from the internet (or an outside network).
* User that connects to the system using a web browser, can connect to the frontend compoent, which sends his request, either to the management service (for all user session management purposes), or to the gateway service (concerning remote display protocol traffic).
* Hosts the Vue-based client modules: nubo-admin (which is the admin's control panel client) and nubo-client-desktop (which is the end user's desktop client).

### Platform Server
Github's project: [Frontend](https://github.com/nubosoftware/platform_server).
The platform server:
* Manages the users' containers in each server.
* Runs in each server and gets commands from the management component regarding users logging in or out, and then starts or stops the containers using the parameters recieved from the management component.
* Sends health information and performance statistics to the management server.
