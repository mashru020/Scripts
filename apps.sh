#!/bin/bash

#Author: Mashrur Rahman
#Date Created: 03-11-2022

#Description
#Basic software installation for ubuntu 

#Package Update-----------------------------------------
echo "================================================================="
echo "apt-update and upgrade"
echo "================================================================="

sudo apt update&&sudo apt upgrade -y

echo "================================================================="
echo "curl installation"
echo "================================================================="

sudo snap install curl

echo "================================================================="
echo "chrome installation"
echo "================================================================="

#Chrome------------------------------------------------
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#sudo dpkg -i google-chrome-stable_current_amd64.deb

#Git Install ------------------------------------------
echo "================================================================="
echo "Git installation"
echo "================================================================="
sudo apt install -y git

# VS Code ------------------------------------------

echo "================================================================="
echo "VSCODE INSTALLATION"
echo "================================================================="

sudo snap install --classic code

#Skypee
echo "================================================================="
echo "skype installation"
echo "================================================================="

sudo snap install skype --classic


#Vlc Player-------------------------------------------
echo "================================================================="
echo "vlc player installation"
echo "================================================================="

sudo snap install vlc

