#!/bin/bash

sudo apt-get update
sudo apt-get install -y aptitude
# Install fav program
sudo aptitude install -y vim ufw unattended-upgrades git tmux htop build-essential

# Setup firewall
sudo ufw default allow outgoing
sudo ufw default deny incoming
sudo ufw allow ssh
sudo ufw allow 80/tcp
sudo ufw allow http/tcp 
sudo ufw allow 443/tcp
sudo ufw allow https/tcp
sudo ufw -y enable

# Install Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce docker-compose
sudo usermod -aG docker ${USER}

