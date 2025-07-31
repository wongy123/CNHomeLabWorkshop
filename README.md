# CNHomeLabWorkshop
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
