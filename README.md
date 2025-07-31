# CNHomeLabWorkshop

 <img width="2560" height="1280" alt="image" src="https://github.com/user-attachments/assets/0a00c8d1-e3f4-47bd-87b1-9a783b675b3f" />
 <img width="1198" height="957" alt="image" src="https://github.com/user-attachments/assets/073b931e-7568-4241-a726-c58f82bd3d0b" />

<img width="1600" height="789" alt="image" src="https://github.com/user-attachments/assets/1d862d57-9d88-4dde-8c88-2d9728177506" />
<img width="540" height="320" alt="image" src="https://github.com/user-attachments/assets/cd41a629-6ec3-417d-99c4-e5263b41398f" />

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
