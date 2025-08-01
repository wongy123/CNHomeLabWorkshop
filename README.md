# CNHomeLabWorkshop

## Set Up Raspberry Pi
### Introduction
What is a Raspberry Pi? It is a series of small single-board computer originally intended for Computer Science students to practise their skills. Their low cost and flexibility contributed to their popularity skyrocketing, and the recent models are rather powerful for their size. 

Raspberry Pi usually come pre-installed with Raspberry Pi OS, a Linux distribution (distro) specifically designed for these computers' ARM CPU architecture.

However, the most widely supported RPi OS is 32-bit which comes with severe limitation in terms of compatibility with many modern programs, and the 64-bit version released in 2020 is still too new and not widely supported by some programs.

Therefore, we will be installing Ubuntu Server on our Pi. Ubuntu is one of the most popular distros, and the Server version is simply a stripped-down version that only comes with a Command Line Interface (CLI), ommiting the resource-intensive Graphical User Interface (GUI) or "Desktop" that you usually interact with using a mouse.

### Walkthrough
#### Step 1
First, navigate to `https://www.raspberrypi.com/software/` and install the Raspberry Pi Imager. This tool allows you to easily configure and flash images of many different operating systems onto your Pi. An image is basically a copy of some files, in this case the entire operating system.

#### Step 2
Take the microSD card out of your Pi and mount it on your PC. You can do this by either directly inserting the SD card into a card reader on your PC or by using a USB adapter. 

#### Step 3
Open Raspberry Pi Imager, and select your Pi device. For our workshop, we will be using Raspberry Pi 4. 
<img width="1330" height="943" alt="image" src="https://github.com/user-attachments/assets/0e5d57a2-b918-4e88-8aa6-2a8bc83fded7" />

#### Step 4
Select the Operating System. As discussed above, we will be using Ubuntu Server. Scroll down to `Other general-purpose OS`, select `Ubuntu`, then scroll down to find `Ubuntu Server 24.04.2 LTS(64-bit).

LTS stands for Long Term Support. 24.04 is the latest LTS release of Ubuntu, meaning it will receive 5 years of free security upgrades, while other interim production releases only get 9 months of support.

<img width="1330" height="943" alt="image" src="https://github.com/user-attachments/assets/afa2604a-d244-4de1-8024-38eeb06d39b9" />
<img width="1330" height="943" alt="image" src="https://github.com/user-attachments/assets/45b2a5e9-5804-4b1e-97a4-9d1e9fcd7bf3" />
<img width="1330" height="943" alt="image" src="https://github.com/user-attachments/assets/69497c68-b5a6-4432-8523-3d6dc367bb91" />

#### Step 5
Select your SD card or USB adapter as the Storage. The imager will overwrite everything in the selected storage device, so make sure you have backed up important files. Once that is done, click `Next`.
<img width="1330" height="943" alt="image" src="https://github.com/user-attachments/assets/ef484297-ad25-4a88-8366-5eb9121ff7b0" />
<img width="1330" height="943" alt="image" src="https://github.com/user-attachments/assets/0a5fb125-c20c-4412-b07e-e26607c9869f" />

#### Step 6
On the pop-up, click on `Edit Settings`.
<img width="1330" height="943" alt="image" src="https://github.com/user-attachments/assets/1d397dc9-495c-4dad-ba3c-452d73e95154" />

You will be prompted to enter OS Customisation configurations:
- Set Host Name: This is how your device will appear in the local network. You can name it whatever you want.
- Set username and password: This is your Ubuntu login user. I usually set the username to `user` for simplicity.
- Configure wireless LAN: This will allow your Pi to automatically connect to Wi-Fi on first boot. For our workshop, please input the following details:

| Setting | Attribute |
| ----------- | ----------- |
| SSID | RaspPiWorkshop |
| Password | password |
| Wireless LAN Country | AU |

- Set locale settings: This will affect the time sync and keyboard layout. Please select the following:

| Setting | Attribute |
| ----------- | ----------- |
| Time zone | Australia/Brisbane |
| Keyboard layout | US |
<img width="1078" height="881" alt="image" src="https://github.com/user-attachments/assets/5cc5b2ca-ee63-446a-b209-1dbb33164d2a" />
<img width="1078" height="881" alt="image" src="https://github.com/user-attachments/assets/f1558476-7a68-490f-ac76-4fe63a9d3983" />
<img width="1078" height="881" alt="image" src="https://github.com/user-attachments/assets/1ee84682-d099-4df9-b294-c6359d6cb518" />

#### Step 7
Navigate to the `Services` tab at the top of the pop-up, then check `Enable SSH`, and make sure that `Use password authentication` is selected. This will allow us to SSH into our Pi using the terminal app on our PC later. Click `Save`.
<img width="1078" height="881" alt="image" src="https://github.com/user-attachments/assets/db78d546-bc63-4296-9741-5b171a53b158" />

#### Step 8
You will receive a warning about the storage device being wiped. Make sure that this is the correct storage device, then click `Yes`.
<img width="1330" height="943" alt="image" src="https://github.com/user-attachments/assets/1f13fda1-589a-4b17-ad59-7bb6fa020eac" />

#### Step 9
Patiently wait for the OS to be installed on the SD card. Once it is done, you can remove the SD card and pop it back into the Pi. Now the Pi is ready to go!
<img width="1330" height="943" alt="image" src="https://github.com/user-attachments/assets/70d8f9d1-fdc0-46be-84f4-8345a88ec8a5" />


---
## Set Up MERN Stack
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

Clone this repo by running this command: 
```Bash
git clone https://github.com/wongy123/CNHomeLabWorkshop.git
```

#### Step 2

Navigate into the cloned repository by running this command: 
```Bash
cd CNHomeLabWorkshop/
```

`cd` stands for Change Directory

#### Step 3

Run the InstallDocker.sh script to install docker on your Pi. 
 <img width="1198" height="957" alt="image" src="https://github.com/user-attachments/assets/073b931e-7568-4241-a726-c58f82bd3d0b" />
Docker is a platform for running and managing standalone environments called Containers. Each container usually runs an application or service. We will be using Docker to host our MongoDB database, which will allow us to easily backup and migrate the entire database if necessary.

Run this installation script by running this command: 
```Bash
./InstallDocker.sh
```

#### Step 4

Run the InstallNode.sh script to install Node.js using Node Version Manager (NVM). NVM is a tool that allows you to quickly install different versions of Node.

Run this installation script by running this command: 
```Bash
./InstallNode.sh
```

#### Step 5

Pull the image for MongoDB by running this command: 
```Bash
docker pull arm64v8/mongo:4.4.18
```

An image is basically a snapshot of a container. Building the image allows you to replicate the container at the time the snapshot was taken.

#### Step 6

Now that we have the docker image for MongoDB, let's build and run it. The StartMongoDB.sh script builds the image, sets its storage volume to be on the host's `/srv/mongodb/data` directory, and runs the "mongodb" container automatically.

Run this script by running this command: 
```Bash
./StartMongoDB.sh
```

#### Step 7

Finally, let's install Caddy. Caddy is a web wserver that can also reverse proxy. 

<img width="1600" height="789" alt="image" src="https://github.com/user-attachments/assets/1d862d57-9d88-4dde-8c88-2d9728177506" />

<img width="540" height="320" alt="image" src="https://github.com/user-attachments/assets/cd41a629-6ec3-417d-99c4-e5263b41398f" />

To install Caddy using the InstallCaddy.sh script, run this command: 
```
./InstallCaddy.sh
```

---

### Setup Complete!

You can now start developing and hosting a MERN stack web application on your Raspberry Pi!

Navigate to `http://<pi-ip-address>/` to see your Caddy page! (Replace `<pi-ip-address>` with your Pi's actual address)


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
