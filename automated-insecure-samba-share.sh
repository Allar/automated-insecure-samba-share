#!/bin/bash 
my_name=$(whoami)

sudo apt-get install samba
sudo ufw allow samba

sudo rm /etc/samba/smb.conf
sudo mkdir /home/Drop
sudo chown $my_name /home/Drop

sudo wget https://cdn.rawgit.com/Allar/automated-insecure-samba-share/master/smb.conf --output-document=/etc/samba/smb.conf
sudo sed -i "s/YOUR_USERNAME_HERE/$my_name/g" /etc/samba/smb.conf
sudo sed -i "s/YOUR_SERVER_HOSTNAME_HERE/$HOSTNAME/g" /etc/samba/smb.conf

rm automated-insecure-samba-share.sh

sudo reboot
