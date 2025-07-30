#!/bin/bash

CONTAINER_NAME="mongodb"
IMAGE="arm64v8/mongo:4.4.18"
PORT="27017"
DATA_DIR="/srv/mongodb/data"

echo "Preparing data directory..."
sudo mkdir -p "$DATA_DIR"
sudo chown "$USER:$USER" "$DATA_DIR"

# Stop and remove existing container if present
if docker ps -a --format '{{.Names}}' | grep -q "^${CONTAINER_NAME}$"; then
  echo "Stopping and removing existing MongoDB container..."
  docker rm -f "${CONTAINER_NAME}"
fi

echo "Starting MongoDB..."
docker run -d \
  --name "${CONTAINER_NAME}" \
  --restart unless-stopped \
  -p ${PORT}:${PORT} \
  -v "$DATA_DIR":/data/db \
  ${IMAGE}

echo "MongoDB container started on port ${PORT}."
