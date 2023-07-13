#!/bin/bash

# Install Apache HTTP Server
sudo yum update -y
sudo yum install httpd -y

# Start the Apache service
sudo systemctl start httpd

# Enable Apache to start on system boot
sudo systemctl enable httpd

# Copy the index.html file
sudo cp linux-todolist.html /var/www/html/
# Moving file linux-todolist.html -> index.html
sudo mv  linux-todolist.html  index.html
# Restart Apache to apply changes
sudo systemctl restart httpd

# get the service status
netstat -tlpn |grep "httpd"
