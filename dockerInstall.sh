#!/bin/bash

#author:		Md.Mashru Rahman

#Purpose:		Install Docker in ubuntu 22.04

#Date of creation:	15 april 2023

#update your existing list of packages
echo "Updating existing list of packages"
sudo apt update


#install a few prerequisite packages which let apt use packages over HTTPS:
echo "Install few prerequisite packages"
sudo apt install apt-transport-https ca-certificates curl software-properties-common

#add the GPG key for the official Docker repository to your system:
echo "Adding the GPG key"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

#Add the Docker repository to APT sources:
echo "Adding Docker repository to APT sources"
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

#Update your existing list of packages again for the addition to be recognized:
echo "Updating existing list of packages again"
sudo apt update

#Make sure you are about to install from the Docker repo instead of the default Ubuntu repo:
echo "Make sure about to install form Docker repo"
apt-cache policy docker-ce




#Finally, install Docker:
echo "Installing Docker"
sudo apt install docker-ce

#Check that it’s running:
echo "Checking status"
sudo systemctl status docker






#==========================================================
#add your username to the docker group:
sudo usermod -aG docker ${USER}
#To apply the new group membership
su - ${USER}
groups
