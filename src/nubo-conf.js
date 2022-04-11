const readline = require('readline');
const util = require('util');
const fs = require('fs').promises;
const path = require('path');
const crypto = require('crypto');
const execFile = require('child_process').execFile;
const os = require("os");
const yaml = require('js-yaml');
const ini = require('ini');

const BASE_IMAGE = 'nubo-ubuntu:20.04';
const VERION_TAG = '3.2';

const { program } = require('commander');
program.version('0.9');

program
    .option('-p, --path <path>','Root path','./');

program.parse();
const options = program.opts();


/**
 * Root folder for docker-compose
 */
let root = "./";
let rl;



//const question = util.promisify(rl.question).bind(rl);
const question = (query, def) => {
    return new Promise(resolve => {
        rl.question(`${query} [${def}] `, (answer) => {
            if (answer == "") answer = def;
            resolve(answer);
        });
        //setTimeout(resolve, ms)
    });
};



async function askYesNo(query, def) {
    let answer;
    while (answer != "Y" && answer != "N") {
        answer = (await question(query, def)).toUpperCase();
    }
    return (answer == "Y");
}


function validateEmail(email) {
    const re = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(String(email).toLowerCase());
}

function randomKey(len) {
    let s = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    let key = Array(len).join().split(',').map(function () { return s.charAt(crypto.randomInt(0, s.length)); }).join('');
    return key;
}


async function isDirEmpty(dir) {
    try {
        const dirpath = path.join(root, dir);
        await fs.mkdir(dirpath, { recursive: true });
        files = await fs.readdir(dirpath);
        //console.log(`files.length: ${files.length}`);
        return (files.length == 0);
    } catch (e) {
        try {
            await fs.mkdir(dirpath, { recursive: true });
        } catch (e2) {

        }
        return true;
    }
}

async function readJSONFile(file) {
    const filepath = (file.startsWith("/") ? file : path.join(root, file));
    const str = await fs.readFile(filepath, "utf8");
    const obj = JSON.parse(str);
    return obj;
}

async function writeJSONFile(file, obj) {
    const filepath = (file.startsWith("/") ? file : path.join(root, file));
    const str = JSON.stringify(obj, null, 4);
    await fs.writeFile(filepath, str);
}

async function readYamlFile(file) {
    const filepath = (file.startsWith("/") ? file : path.join(root, file));
    const str = await fs.readFile(filepath, "utf8");
    const obj = yaml.load(str);
    return obj;
}

async function writeYamlFile(file, obj) {
    const filepath = (file.startsWith("/") ? file : path.join(root, file));
    const str = yaml.dump(obj);
    await fs.writeFile(filepath, str);
}

async function readINIFile(file) {
    const filepath = (file.startsWith("/") ? file : path.join(root, file));
    let str = "";
    try {
        const str = await fs.readFile(filepath, "utf8");
    } catch (err) {
        // ignore file not found errors - return empty ini file
    }
    const obj = ini.decode(str);
    return obj;
}

async function writeINIFile(file, obj) {
    const filepath = (file.startsWith("/") ? file : path.join(root, file));
    const str = ini.encode(obj);
    await fs.writeFile(filepath, str);
}

function execComposesCmd(params, env) {
    return new Promise((resolve, reject) => {
        if (!env) env = {};
        env.ROOT_DIR = root;
        execFile('/usr/local/bin/docker-compose', params, {
            cwd: root,
            env,
            maxBuffer: 1024 * 1024 * 10
        }, function (error, stdout, stderr) {
            if (error) {
                reject(error);
            }
            resolve({
                stdout,
                stderr
            });
            return;
        });
    });
}

function execDockerCmd(params) {
    return new Promise((resolve, reject) => {
        execFile('/usr/bin/docker', params, {
            maxBuffer: 1024 * 1024 * 10,
            cwd: root,
        }, function (error, stdout, stderr) {
            if (error) {
                reject(error);
            }
            resolve({
                stdout,
                stderr
            });
            return;
        });
    });
}

function execCmd(cmd,params) {
    return new Promise((resolve, reject) => {
        execFile(cmd, params, {
            maxBuffer: 1024 * 1024 * 10,
            cwd: root,
        }, function (error, stdout, stderr) {
            if (error) {
                reject(error);
            }
            resolve({
                stdout,
                stderr
            });
            return;
        });
    });
}

function sleep(ms) {
    return new Promise((resolve, reject) => {
        setTimeout(() => resolve(), ms);
    });
}

async function emptyDir(dir) {
    if (! await isDirEmpty(dir)) {
        const dirpath = path.join(root, dir);
        await fs.rm(dirpath, { recursive: true });
        await fs.mkdir(dirpath, { recursive: true });
    }
}

async function main() {
    rl = readline.createInterface({
        input: process.stdin,
        output: process.stdout
    });
    let exitCode = 0;
    let hostname;
    let runInDocker = false;
    try {

        root = path.resolve(options.path);

        if (process.env.DOCKER_ENV) {
            runInDocker = true;
        }
        // read previous run configuration fie
        let prevRun = {};
        try {
            // read previous run params (if exists)
            prevRun = await readJSONFile('.nubo-conf-params');
            // delete params
            await fs.unlink(path.join(root,'.nubo-conf-params'));
        } catch (e) {
            // ignore any error
        }

        if (!prevRun.exitCode || prevRun.exitCode <= 1) {

            console.log(`

Linux Remote Desktop
====================

This script creates a linux remote desktop system in a single server.
It installs, configures and runs all the necessary components.

`);

            let a = await askYesNo('Ready to begin?', "Y");
            if (!a) {
                return;
            }

            console.log(`Root path for linux remote desktop: ${root}`);
        }

        // reading current configuration
        let settings = await readJSONFile('nubomanagement/conf/Settings.json');
        const dcName = settings.dcName;

        // prepare default .env file for docker-compose
        let dockerEnv = await readINIFile(".env");
        const imagesTags = ['RSYSLOG_TAG','MANAGEMENT_TAG','FRONTEND_TAG','GATEWAY_TAG','PS_TAG'];
        for (const imageTag of imagesTags) {
            if (!dockerEnv[imageTag]) {
                dockerEnv[imageTag] = VERION_TAG;
            }
        }
        dockerEnv['MYSQL_TAG'] = "latest";
        dockerEnv['REDIS_TAG'] = "latest";
        dockerEnv['ROOT_DIR'] = root;
        await writeINIFile(".env",dockerEnv);

        //console.log(`Data center name: ${dcName}`);

        if (!prevRun.exitCode || prevRun.exitCode <= 1) {
            console.log("Stopping all running containers..");
        }
        let ret = await execComposesCmd(["down"]);

        if (!prevRun.exitCode || prevRun.exitCode <= 1) {
            console.log(`Checking mysql database..`);
        }
        if (! await isDirEmpty('mysql/data')) {
            let a = await askYesNo('An existing database found. Would you like to delete it and start with a new database?', "N");
            if (!a) {
                console.log("Installation process cannot run on existing database. Exiting...");
                return;
            }
            await fs.rm(path.join(root, "mysql/data"), { recursive: true });
        }

        hostname = ( process.env.DEF_HOSTNAME ? process.env.DEF_HOSTNAME : os.hostname());
        if (prevRun.exitCode > 1 && prevRun.hostname) {
            hostname = prevRun.hostname;
        } else {
            hostname = await question("Enter host name:",hostname);
        }
        const registryURL = `${hostname}:5000`;

        // create certifications for registry
        console.log("Generating self-signed certificate..");
        await fs.mkdir(path.join(root, "cert"), { recursive: true });
        const certFile = path.join(root, "cert/server.cert");
        const keyFile = path.join(root, "cert/server.key");
        await execCmd("openssl",["req","-newkey","rsa:4096","-nodes","-sha256","-keyout",keyFile,"-subj",
                        `/C=NA/ST=NA/L=NA/O=VA/CN=${hostname}`,"-addext",`subjectAltName = DNS:${hostname}`,"-x509","-days","3650",
                        "-out",certFile]);
        await fs.chown(keyFile, 1000, 1000);

        let certFileStr = await fs.readFile(certFile,"utf8");

        await fs.mkdir(`/etc/docker/certs.d/${registryURL}`, { recursive: true });
        let castr = "";
        try  {
            castr = await fs.readFile(filepath, "utf8");
        } catch (e) {

        }
        castr = `${castr}${certFileStr}`;
        await fs.writeFile(`/etc/docker/certs.d/${registryURL}/ca.crt`, castr);

        // generate auth password for the registry
        const registryPassword = randomKey(20);
        const registryUser = "registry";
        const passObj = await execDockerCmd(["run","--rm","--entrypoint","htpasswd","httpd:2","-Bbn",registryUser,registryPassword]);
        const htpasswd = passObj.stdout;
        const htpasswdFile = path.join(root, "cert/htpasswd");
        await fs.writeFile(htpasswdFile, htpasswd);

        console.log(`Pulling required images..`);
        await execComposesCmd(["pull"]);

        console.log(`Starting registry. Registry URL: ${registryURL}`);
        ret = await execComposesCmd(["up", "-d", "nubo-registry"]);

        // login to the registry
        await execDockerCmd(['login', '-u', registryUser, '-p',registryPassword,registryURL]);

        // server configuration
        settings.registryURL = registryURL;
        settings.registryUser = registryUser;
        settings.registryPassword = registryPassword;
        settings.baseImage = `${registryURL}/nubo/${BASE_IMAGE}`
        settings.serverurl = `http://${hostname}/`;
        settings.controlPanelURL = `http://${hostname}:6080/`;
        settings.nfshomefolder = path.join(root,"nfs/homes");
        await writeJSONFile('nubomanagement/conf/Settings.json', settings);


        console.log(`Pulling base image and pushing it to local registry...`);
        // upload base image to registry
        ret = await execDockerCmd(["pull", `nubosoftware/${BASE_IMAGE}`]);
        ret = await execDockerCmd(["tag", `nubosoftware/${BASE_IMAGE}`,settings.baseImage]);
        ret = await execDockerCmd(["push",settings.baseImage]);


        // delete old data
        await emptyDir('redis/data');
        await emptyDir('nubomanagement/docker_apps');

        // create log folder
        await fs.mkdir(path.join(root, "log"), { recursive: true });

        console.log(`Creating database...`);
        await fs.mkdir(path.join(root, "mysql/data"), { recursive: true });

        // generate random mysql password
        const mysqlPassword = randomKey(20);

        // start mysql container with the new password
        dockerEnv['MYSQL_PASSWORD'] = mysqlPassword;
        await writeINIFile(".env",dockerEnv);
        ret = await execComposesCmd(["up", "-d", "nubo-mysql"], { MYSQL_PASSWORD: mysqlPassword });
        //console.log(`start mysql: ${JSON.stringify(ret,null,2)}`);
        console.log(`Generated MySQL password: ${mysqlPassword}. Please save it to access your database.`);
        dockerEnv['MYSQL_PASSWORD'] = "none";
        await writeINIFile(".env",dockerEnv);

        // write the myql password in the management configuration
        let sconf = await readJSONFile('nubomanagement/conf/sysconf');
        sconf.dbConf.password = mysqlPassword;
        await writeJSONFile('nubomanagement/conf/sysconf', sconf);

        // write the myql password in the nubo-rsyslog configuration
        let syslogConf = await readJSONFile('nubo-rsyslog/conf/Settings.json');
        syslogConf.db.password = mysqlPassword;
        await writeJSONFile('nubo-rsyslog/conf/Settings.json', syslogConf);

        // copy the start mysql schema to the container
        //ret = await execDockerCmd(["cp", "scripts/nubo_start_db.sql", `nubo-mysql:/tmp`]);


        console.log(`Starting database...`);
        let schemaCreated = false;
        let tryCnt = 0;
        do {
            tryCnt++;
            try {
                await sleep(3000);
                //
                let ret = await execDockerCmd(["exec", "nubo-mysql", "/bin/bash", "-c", `echo 'select user from mysql.user' | mysql -u root -p${mysqlPassword}`]);
                schemaCreated = true;
            } catch (e) {
                //console.error(`Schema create error: ${e}, tries: ${tryCnt}`);
                if (tryCnt >= 40) {
                    console.error(`Database not started after 120 seconds`, e);
                    throw e;
                }
            }
        } while (!schemaCreated);

        // create start database
        console.log("Creating database schema...");
        ret = await execDockerCmd(["exec", "nubo-mysql", "/bin/bash", "-c", `mysql -u root -p${mysqlPassword} < /var/lib/mysql-init/nubo_start_db.sql`]);

        // create front end password
        frontEndPassword = randomKey(20);
        ret = await execDockerCmd(["exec", "nubo-mysql", "/bin/bash", "-c", `echo 'insert into allowed_front_end_servers values ("${dcName}","frontend","${frontEndPassword}")' | mysql -u root -p${mysqlPassword} nubo`]);

        // update frontend config file
        let feConf = await readJSONFile("frontend/conf/Settings.json");
        feConf.backendAuth.user = "frontend";
        feConf.backendAuth.password = frontEndPassword;
        await writeJSONFile("frontend/conf/Settings.json", feConf);

        // update gateway config file
        let gwConf = await readJSONFile("gateway/conf/Settings.json");
        gwConf.backendAuthUser = "frontend";
        gwConf.backendAuthPassword = frontEndPassword;
        await writeJSONFile("gateway/conf/Settings.json", gwConf);

        // update platform server config file
        let psConf = await readJSONFile("platform_server/conf/Settings.json");
        psConf.registerParams.user = "frontend";
        psConf.registerParams.password = frontEndPassword;
        await writeJSONFile("platform_server/conf/Settings.json", psConf);

        const homesPath = path.join(root,"nfs/homes");
        // configure nfs server
        ret = await execDockerCmd(["exec", "nubo-mysql", "/bin/bash", "-c", `echo 'update nfs_servers set nfsip="local", sship="local" , nfspath="${homesPath}"' | mysql -u root -p${mysqlPassword} nubo`]);

        // configure data center URL
        ret = await execDockerCmd(["exec", "nubo-mysql", "/bin/bash", "-c", `echo 'update data_center_configs set value="http://${hostname}/" where name="dcURL" ' | mysql -u root -p${mysqlPassword} nubo`]);

        // update docker-compose file to include the selected path in the nfs binds
        let comp = await readYamlFile("docker-compose.yml")
        //console.log(`YAML to JS: ${JSON.stringify(comp,null,2)}`);
        let mvols = comp.services['nubo-management'].volumes;
        for (let i=0; i<mvols.length;i++) {
            if (mvols[i].source == "/opt/nubo/nfs/homes") {
                mvols[i].source = homesPath;
                mvols[i].target = homesPath;
            }
        }
        let pvols = comp.services['nubo-ps'].volumes;
        for (let i=0; i<pvols.length;i++) {
            if (pvols[i].source == "/opt/nubo/nfs/homes") {
                pvols[i].source = homesPath;
                pvols[i].target = homesPath;
            }
        }
        await writeYamlFile("docker-compose.yml",comp);

        // start management container with the new password
        ret = await execComposesCmd(["up", "-d", "nubo-management"]);


        let adminemail, adminpass, admindomain;

        // check if we need to add site administrator
        //let createAdmin = await askYesNo("Create site administrator?", "Y");
        //if (createAdmin) {
        // ask for admin email
        console.log(`Creating your first administrator user\n`);
        while (!adminemail) {
            adminemail = await question("Enter admin email:", "");
            if (!validateEmail(adminemail)) {
                console.log("Invalid email");
                adminemail = "";
            }
        }
        while (!adminpass) {
            adminpass = await question("Enter admin password", "");
            if (!adminpass) {
                continue;
            }
            let passconfirm = await question("Re-enter admin password", "");
            if (adminpass != passconfirm) {
                console.log("Passwords do not match");
                adminpass = "";
            }
        }
        const defDomain = adminemail.split('@')[1];
        while (!admindomain) {
            admindomain = await question("Enter admin domain", defDomain);
        }

        console.log("Configuring organization and user...");
        ret = await execDockerCmd(["exec","nubo-management","node", "dist/createAdmin.js", "-e", `${adminemail}`, "-p", `${adminpass}`, "-d", `${admindomain}`, "-s", "-a"]);
        //console.log(`res: ${JSON.stringify(ret,null,2)}`);

        // configure default platform
        ret = await execDockerCmd(["exec", "nubo-mysql", "/bin/bash", "-c", `echo 'insert into static_platforms (platid , ip , vmname) values (1,"nubo-ps","nubo-ps");' | mysql -u root -p${mysqlPassword} nubo`]);

        // Change the platform pool to start one platform (we need to re-read the Settings.json)
        settings = await readJSONFile('nubomanagement/conf/Settings.json');
        settings.platformParams.platformPoolSize = 1;
        await writeJSONFile('nubomanagement/conf/Settings.json', settings);
        ret = await execComposesCmd(["restart", "nubo-management"]);

        console.log(`
Linux Remote Desktop is successfully installed.

All components are running as docker containers and can be controlled using docker-compose,
from the docker compose script, located at ${root}/docker-compose.yml.

You can manage the system by logging in to the admin control panel at:
http://${hostname}:6080/html/admin

Users can open remote desktop sessions at:
http://${hostname}/html/desktop

`);

    console.log(`Starting all containers...`);
    ret = await execComposesCmd(["up", "-d"]);

    } catch (err) {
        console.error("Error", err);
        exitCode = 1;
    } finally {
        rl.close();
        if (exitCode > 1) {
            let prevRun = {
                exitCode,
                hostname
            }
            await writeJSONFile('.nubo-conf-params',prevRun);
            process.exit(exitCode);
        }
    }
}


main();