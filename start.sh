#!/bin/bash

sudo yum install git -y

git clone https://github.com/AitazazGilani/geoservices

cd geoservices

sudo yum update -y

sudo amazon-linux-extras install docker httpd -y

sudo pip3 install docker-compose

sudo systemctl enable docker

sudo systemctl start docker

# Start the services defined in docker-compose.yml in detached mode
docker-compose up -d
