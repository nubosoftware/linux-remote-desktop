
# Getting Started Guide

## Introduction
This guide provides step-by-step instructions on how to install and configure a full working VDI system on a Linux server. At the end of this tutorial, you will have a ready-to-go VDI system and basic knowledge on how to control the system, as well as add users and apps.

## Prerequisites

 - A server with a Linux operating system. Any Linux that [supports Docker](https://docs.docker.com/engine/install/binaries/#prerequisites) can be used.
 - Memory - Minimum 4GB memory is required. This includes 2GB for the management services and 2GB for one concurrent user.  Each additional concurrent user requires 2GB RAM.
 - Installed Docker engine. You can install it using the instruction [available on your Linux distribution](https://docs.docker.com/engine/install/#server) 
 - Installed [Docker Compose](https://docs.docker.com/compose/install/). 

## A. Bootstrap Script

The bootstrap script installs all components in a single server. It first pulls out all the required images and installs a basic configuration. It also prompts for some information and creates an admin user that you can use to manage your VDI system.


1. Run the command to download and start the bootstrap script:

    `sudo curl -L https://github.com/nubosoftware/linux-remote-desktop/releases/download/0.9.1/bootstrap.sh -o /usr/local/bin/nubo-bootstrap.sh ; sudo chmod +x /usr/local/bin/nubo-bootstrap.sh ; sudo /usr/local/bin/nubo-bootstrap.sh`

The bootstrap script will install all configuration files in the /opt/nubo folder. You can use a different folder by adding -h <folder> in the command line:

    /usr/local/bin/nubo-bootstrap.sh -h /opt/linux-remote-desktop

2. The script waits for your confirmation to start the process and then pulls out all the services' images and starts configuring the services one by one. 

3. The script prompts for your host name, so please enter your server's host name. It's important to enter a valid host name in order for potential users' devices to successfully connect to the server. 

4. You will notice that the script has generated a database password. e.g.:   

> Generated MySQL password: aYhkZtLEKk4fACg9lDlR. Please save it to
> access your database.
> 

Don't forget to write down the generated MySQL password, so you will be able to access the database later.

5. The script also prompts and creates the first administrator with a designated user and password. Please enter your email address and select a strong password. Later, you will log in to the admin control panel using these credentials.

6. When the script finishes, it will show the following message:
![Bootstrap finish text](https://github.com/nubosoftware/linux-remote-desktop/blob/main/docs/imgs/screenshot-bootstrap-finish.png?raw=true)The message contains two URLs. One for the admin control panel and the second for the end users' desktop access.

7. At this step, the script started all containers and exited. You can see the running containers by typing a simple `docker ps` command:
```
$ docker ps
CONTAINER ID   IMAGE                             COMMAND                  CREATED          STATUS                             PORTS                                                                                                                                                            NAMES
373d4639bd1c   nubosoftware/nubofrontend         "/usr/bin/docker-ent…"   16 seconds ago   Up 15 seconds                      0.0.0.0:80->80/tcp, :::80->80/tcp, 0.0.0.0:443->443/tcp, :::443->443/tcp, 0.0.0.0:6080->6080/tcp, :::6080->6080/tcp, 0.0.0.0:6443->6443/tcp, :::6443->6443/tcp   nubo-frontend
b984c79daf7f   nubosoftware/nubomanagement       "/usr/bin/docker-ent…"   17 seconds ago   Up 16 seconds                      8080/tcp, 8443/tcp                                                                                                                                               nubo-management
5743cc642860   registry:2                        "/entrypoint.sh /etc…"   20 seconds ago   Up 17 seconds                      0.0.0.0:5000->5000/tcp, :::5000->5000/tcp                                                                                                                        nubo-registry
b04b6eee5d3f   nubosoftware/gateway              "/usr/bin/docker-ent…"   20 seconds ago   Up 17 seconds (health: starting)   4822/tcp                                                                                                                                                         nubo-gateway
1feb60c8e905   ubuntu/mysql                      "docker-entrypoint.s…"   20 seconds ago   Up 17 seconds                      3306/tcp, 33060/tcp                                                                                                                                              nubo-mysql
753be7ae0dad   redis                             "docker-entrypoint.s…"   20 seconds ago   Up 17 seconds                      6379/tcp                                                                                                                                                         nubo-redis
4854a2dd3ef0   nubosoftware/nuboplatformserver   "/usr/bin/docker-ent…"   20 seconds ago   Up 17 seconds                      3333-3334/tcp                                                                                                                                                    nubo-ps
```
You will notice that 8 containers are running in parallel. Each container contains a different service that allows the full VDI system to work properly. In this example, we are running all services in one server. However, you can later install some services in different servers and even use multiple instances for redundancy and performance.

8. In the installation folder (i.e. /opt/nubo ), you will find a `docker-compose.yml` file. This file controls the running environment using the [Docker Compose](https://docs.docker.com/compose/) tool.  For example, you can bring down all the resources by `cd` into that folder and run `docker-compose down` and bring all resources up again by running `docker-compose up -d`.

9.  Other content available in the installation folder, are multiple sub-folders - one for each service. Each folder contains the configuration files needed for each service and other files that need to be persistent after shutdown. for example, the files in the `mysql/data/` folder contain the database files of the MYSQL service. To back up the system, you will just need to back up the installation folder (e.g. /opt/nubo ) with all sub-folders. 

10. It's important to define the outgoing email settings, so that the system will be able to send emails to you and your users. Update the mail settings in the management configuration file at `<installation folder>/nubomanagement/conf/Settings.json` . Please change the parameters in the "mailOptions" object to send an email via your SMTP server. For example:
```
"mailOptions": {
        "host": "smtp-host",
        "port": 465,
        "secure": true,
        "auth": {
            "user": "user",
            "pass": "pass"
        }
    },
```
After the change, you may need to restart the nubo-management container. You can do that by running the following command from the installation folder: `docker-compose restart nubo-management`
 
11. All logs from all components are sent into a container named 'nubo-rsyslog'. You can read the logs by running the following command: `docker logs nubo-rsyslog`

## B. Admin Control Panel

Now that everything is installed, you can log in to the Admin Control Panel, which is the main tool that helps you manage the system when adding users, adding apps, assigning apps to users, monitoring the system status and changing some configuration.

As this is just a getting-started guide, we will not cover all the Admin Control Panel's functions, but just go over the basic functionalities to allow you to start using the system and add users and apps.

1. Open a web browser and log in to the Admin Control Panel using the link you got from the bootstrap script - `http://yourhostname:6080/html/admin/`. Please use the user and password you provided the bootstrap script as your first admin user.
![Login page - admin control panel](https://github.com/nubosoftware/linux-remote-desktop/blob/main/docs/imgs/admin-login.png?raw=true)
2. Once you logged in successfully, the admin control panel will be opened. You will see the dashboard page, which is now quite empty because the system had just started.
![enter image description here](https://github.com/nubosoftware/linux-remote-desktop/blob/main/docs/imgs/admin-dashboard.png?raw=true)
3. On the left side of the screen, you will see the main menu. Click on the `Platforms` menu item to see the list of available platforms. The platforms are the servers that can host the VDI user sessions. Currently, you have only one platform, which is the one that runs on the server you just installed. If you see that the platform status is "Running", that means that everything is okay with the installation and users can start opening VDI sessions.
![enter image description here](https://github.com/nubosoftware/linux-remote-desktop/blob/main/docs/imgs/admin-platforms.png?raw=true)
4. Now let's define end users that can log in to the desktop client. Click on the`Profiles` menu item. You will see a list of all profiles (users).
![Profiles](https://github.com/nubosoftware/linux-remote-desktop/blob/main/docs/imgs/admin-profiles.png?raw=true)Currently only one user exists - your admin user. You can also use it to open a remote desktop, or create more users. Click  the `New Profile` button to create a new user. Enter the new user, first+last name, and email address, and then click `Save`.
![Add User](https://github.com/nubosoftware/linux-remote-desktop/blob/main/docs/imgs/admin-add-user.png?raw=true)
5. After we have already defined some users, let's assign them some apps. Click on the `Apps` menu item and open the apps' list.
![Apps](https://github.com/nubosoftware/linux-remote-desktop/blob/main/docs/imgs/admin-apps.png?raw=true)The list contains all the apps that can be installed on the users' desktops. Let's add a new app. Click the `Upload App` button.
![Upload App](https://github.com/nubosoftware/linux-remote-desktop/blob/main/docs/imgs/admin-app-upload-gimp.png?raw=true)In the upload app dialog, you can upload a deb file to be installed, or specify an apt package that will be installed from one of the repositories, defined in the base Linux image. In this example, we are adding the gimp package, simply by typing `gimp/` and selecting the full package name from the list. After you select the package name, click  `Upload` to define this app. When the uploading process is finished, the new app will be added and you can click the `Go to App` button to view the app details, as well as assign the apps to users or groups.
![App View](https://github.com/nubosoftware/linux-remote-desktop/blob/main/docs/imgs/admin-app-gimp.png?raw=true)
6. Now, you can assign (install) the apps to specific profiles. Click the `Profiles` tab item, click the `Assign Profiles to App` button and select the profiles you would like the app to be installed to. Click the `Assign Selected Profiles` button and the installation process will begin. Please note that this operation can take some time, but you can continue to do operations simply by clicking anywhere on the screen.
![Assign profiles to app](https://github.com/nubosoftware/linux-remote-desktop/blob/main/docs/imgs/admin-app-gimp-add-profiles.png?raw=true)
## C. Desktop Client
It's time to log in as a VDI user and open a remote desktop session for the first time.

1. Open a web browser and go to the desktop client using the link you get from the bootstrap script - `http://yourhostname/html/desktop/`. Because it is the first time you open it using this browser, you will get into the activation page, which helps you activate your browser and open remote desktop sessions on behalf of a specific user.
![Desktop Activation](https://github.com/nubosoftware/linux-remote-desktop/blob/main/docs/imgs/desktop-activation.png?raw=true)
2. Enter the email address of the user that you added in the admin control panel earlier, and click `Activate`. If the user exists, an email message will be sent to the user, verifying that you are the actual user. You will then see a verification dialog.
![Activation verification wait](https://github.com/nubosoftware/linux-remote-desktop/blob/main/docs/imgs/desktop-activation-wait.png?raw=true)
3. You can get the email, and click on the verification link to activate the remote desktop access, or you can let the admin do it for you in the Admin Control Panel, as follows:
Re-open the Admin Control Panel, click the `Profiles` menu item and then click the `Approvals` tab. 
![enter image description here](https://github.com/nubosoftware/linux-remote-desktop/blob/main/docs/imgs/admin-approve-desktop-user.png?raw=true)
Find your recent request in the list and click the green V icon to approve access.

4. Once activation is approved, go back to the desktop client page and you will notice that you need to enter a new password for your user. Please enter a password,  re-type it to re-confirm and click `Set Password` .
![enter image description here](https://github.com/nubosoftware/linux-remote-desktop/blob/main/docs/imgs/desktop-set-password.png?raw=true)
5. Now, the remote desktop screen will open a new session for the logged-in user.
![Desktop client with wallpaper](https://github.com/nubosoftware/linux-remote-desktop/blob/main/docs/imgs/desktop-wallpaper.png?raw=true)
6. Let's briefly observe what was happening in the background.  Go again to the terminal of the server that hosts the system and type `docker ps`. You will see a new Docker container which is currently running the user's desktop.
```
$ docker ps
CONTAINER ID   IMAGE                                                                          COMMAND                  CREATED         STATUS                  PORTS                                                                                                                                                            NAMES
4e5bf36f87ef   lrdp1.nubosoftware.com:5000/nubo/user93c0d20e6452992134b43aa1c5771589:latest   "/usr/bin/docker-ent…"   3 minutes ago   Up 3 minutes            22/tcp, 3389/tcp, 9001/tcp                                                                                                                                       eager_lichterman
373d4639bd1c   nubosoftware/nubofrontend                                                      "/usr/bin/docker-ent…"   21 hours ago    Up 21 hours             0.0.0.0:80->80/tcp, :::80->80/tcp, 0.0.0.0:443->443/tcp, :::443->443/tcp, 0.0.0.0:6080->6080/tcp, :::6080->6080/tcp, 0.0.0.0:6443->6443/tcp, :::6443->6443/tcp   nubo-frontend
b984c79daf7f   nubosoftware/nubomanagement                                                    "/usr/bin/docker-ent…"   21 hours ago    Up 21 hours             8080/tcp, 8443/tcp                                                                                                                                               nubo-management
5743cc642860   registry:2                                                                     "/entrypoint.sh /etc…"   21 hours ago    Up 21 hours             0.0.0.0:5000->5000/tcp, :::5000->5000/tcp                                                                                                                        nubo-registry
b04b6eee5d3f   nubosoftware/gateway                                                           "/usr/bin/docker-ent…"   21 hours ago    Up 21 hours (healthy)   4822/tcp                                                                                                                                                         nubo-gateway
1feb60c8e905   ubuntu/mysql                                                                   "docker-entrypoint.s…"   21 hours ago    Up 21 hours             3306/tcp, 33060/tcp                                                                                                                                              nubo-mysql
753be7ae0dad   redis                                                                          "docker-entrypoint.s…"   21 hours ago    Up 21 hours             6379/tcp                                                                                                                                                         nubo-redis
4854a2dd3ef0   nubosoftware/nuboplatformserver                                                "/usr/bin/docker-ent…"   21 hours ago    Up 21 hours             3333-3334/tcp                                                                                                                                                    nubo-ps

```
If more users are logged in, you will see new containers, one for each concurrent user. When the user closes the browser window, the user session (and container) will be removed after a timeout.

Go back to the Admin Control Panel and click the `Platforms` menu item. You will notice that the running platform now has one current session. If you click on the platform line, you will get some platform details and a list of the running sessions in the bottom of that page. You can now click the stop icon to stop the running session. This will disconnect the user and remove the running container.
![Platform Sessions](https://github.com/nubosoftware/linux-remote-desktop/blob/main/docs/imgs/admin-platfrom-sessions.png?raw=true)

## Summary

This guide has walked you through all the steps needed, from installing the system on an empty Linux server, to the steps required to start VDI sessions. For more questions or clarifications, please contact us at [support@nubosoftware.com](mailto:support@nubosoftware.com) or [open an issue](https://github.com/nubosoftware/linux-remote-desktop/issues/new/choose) in the Github's project.
