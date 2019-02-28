# Ubuntu scripts

A set of shell scripts to setup an environment on Ubuntu 18.04 (Compatible with 16.04 or higher)

## Usages

- sudo apt-get git
- sudo git clone https://github.com/thunpisit/ubuntu
- cd ubuntu
- sudo ./ubuntu_setup.sh

## ubuntu_setup.sh

The main purpose of this shell script is to create fundamental environment on new Ubuntu by install packages

- Install Nginx & essentials packages
- Turn on firewall with OpenSSH, Nginx Full, 22, 27017
- Install Nodejs & Npm
- Install MongoDB (https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/)
- Install Let's Encrypt
