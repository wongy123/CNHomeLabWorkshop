#!/bin/bash

DATA_DIR="$DATA_DIR"
USERNAME=$(whoami)
sudo chown "$USERNAME:$USERNAME" "$DATA_DIR"

docker run -d \
  --name mongodb \
  --restart unless-stopped \
  -p 27017:27017 \
  -v "$DATA_DIR":/data/db \
  mongo:latest

echo "MongoDB container started successfully."