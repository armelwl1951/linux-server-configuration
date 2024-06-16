#!/bin/bash
sudo apt update
sudo apt install -y openssh-server apache2 ufw

sudo service ssh start
sudo systemctl enable ssh

sudo service apache2 start
sudo systemctl enable apache2

sudo ufw allow 22
sudo ufw allow 'Apache Full'
sudo ufw enable
