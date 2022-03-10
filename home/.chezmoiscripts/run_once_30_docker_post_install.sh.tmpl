#!/bin/sh

if [ -z "$(getent group docker)" ]; then
    echo "INFO No docker group found. Creating new one to run docker without sudo..."
    sudo groupadd docker
    sudo usermod -aG docker $USER
    newgrp docker 
fi

echo "INFO Enabling docker services on startup"
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
