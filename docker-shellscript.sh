#!/bin/bash

# Build the Docker image
docker build -t httpd-image .

# Run a container from the image
docker run -d -p 80:80 --name my-httpd-container httpd-image
