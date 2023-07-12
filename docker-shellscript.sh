#!/bin/bash

# Install docker
sudo yum install docker -y

# Enable and start service
sudo systemctl enable docker
sudo systemctl start docker

# Build the Docker image
docker build -t httpd-image .

# Run a container from the image
docker run -it -p 80:80 --name my-httpd-container httpd-image
