#!/bin/bash
# The purpose of this script is to setup Ubuntu 18.04 environment

# Install Nginx & essentials packages
sudo apt update
sudo apt install nginx -y
sudo systemctl enable nginx
sudo apt install git curl build-essential wget zip unzip -y

# Turn on firewall
sudo apt update
sudo ufw allow 'OpenSSH'
sudo ufw allow 'Nginx Full'
sudo ufw allow 22
sudo ufw allow 27017
sudo ufw enable -y

# Install Nodejs & Npm
sudo apt update
sudo apt install nodejs -y
sudo apt install npm -y

# Install MongoDB (https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/)
sudo apt-get update
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo service mongod start
#sudo systemctl enable mongodb

# Install Let's Encrypt
sudo apt-get update
sudo add-apt-repository ppa:certbot/certbot
sudo apt install python-certbot-nginx
sudo nginx -t
sudo systemctl reload nginx
# sudo certbot --nginx -d example.com -d www.example.com
# sudo certbot renew --dry-run
