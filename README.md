# CNHomeLabWorkshop
 
## Setup MERN Stack
### Introduction
<img width="2560" height="1280" alt="image" src="https://github.com/user-attachments/assets/0a00c8d1-e3f4-47bd-87b1-9a783b675b3f" />

What is MERN?

It stands for:
- M = **MongoDB**: a document-oriented NoSQL database program
- E = **Express.js**: a back-end web application framework for building RESTful APIs
- R = **React.js**: a front-end JavaScript library for building UI out of components
- N = **Node.js**: a server-side JavaScript runtime environment

With these technologies, we can host a full-fledged web application with a powerful back-end, a flexible and interactive front-end, and a scalable database, all on a single device.

Let's get started on building this environment to host a MERN stack app!

---
### Walkthrough
#### Step 1

Clone this repo by running this command: `git clone https://github.com/wongy123/CNHomeLabWorkshop.git`

#### Step 2

Navigate into the cloned repository by running this command: `cd CNHomeLabWorkshop/` 

`cd` stands for Change Directory

#### Step 3

Run the InstallDocker.sh script to install docker on your Pi. 
 <img width="1198" height="957" alt="image" src="https://github.com/user-attachments/assets/073b931e-7568-4241-a726-c58f82bd3d0b" />
Docker is a platform for running and managing standalone environments called Containers. Each container usually runs an application or service. We will be using Docker to host our MongoDB database, which will allow us to easily backup and migrate the entire database if necessary.

Run this installation script by running this command: `./InstallDocker.sh`

#### Step 4

Run the InstallNode.sh script to install Node.js using Node Version Manager (NVM). NVM is a tool that allows you to quickly install different versions of Node.

Run this installation script by running this command: `./InstallNode.sh`

#### Step 5

Pull the image for MongoDB by running this command: `docker pull arm64v8/mongo:4.4.18`

An image is basically a snapshot of a container. Building the image allows you to replicate the container at the time the snapshot was taken.

#### Step 6

Now that we have the docker image for MongoDB, let's build and run it. The StartMongoDB.sh script builds the image, sets its storage volume to be on the host's `/srv/mongodb/data` directory, and runs the "mongodb" container automatically.

Run this script by running this command: `./StartMongoDB.sh`

#### Step 7

Finally, let's install Caddy. Caddy is a web wserver that can also reverse proxy. 

<img width="1600" height="789" alt="image" src="https://github.com/user-attachments/assets/1d862d57-9d88-4dde-8c88-2d9728177506" />

<img width="540" height="320" alt="image" src="https://github.com/user-attachments/assets/cd41a629-6ec3-417d-99c4-e5263b41398f" />

To install Caddy using the InstallCaddy.sh script, run this command: `./InstallCaddy.sh`

---

### Setup Complete!

You can now start developing and hosting a MERN stack web application on your Raspberry Pi!



 `sudo cp StartNodeServer.sh /usr/local/bin/`
 `sudo cp start-node-express.service /etc/systemd/system`
 ```
sudo systemctl daemon-reload
sudo systemctl enable start-node-express
sudo systemctl start start-node-express
```

`sudo nano /etc/caddy/Caddyfile`
``` 
:80 {
        handle /api/* {
                reverse_proxy localhost:4000
        }

        handle /* {
                root * /var/www/html/StudyBuddy
                try_files {path} /index.html

        # Enable the static file server.
                file_server
        }
}
```
