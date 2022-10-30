#!/bin/bash

#Author:	Mashrur
#Date Created:	30 Oct 2022

#Description:
#Install node,npm and pm2 for Ubuntu

sudo apt update

curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo npm install pm2 -g

echo "===================NODE VERSION ===================="
node -v

echo "===================NPM VERSION ===================="
npm -v

echo "===================PM2 VERSION ===================="
pm2 -v
