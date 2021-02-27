#!/bin/bash

sudo apt update && sudo apt upgrade -y
sudo apt install wget software-properties-common -y
sudo add-apt-repository multiverse
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install lib32gcc1 steamcmd -y

sh /usr/games/steamcmd +login anonymous + force_install_dir /home/$USER/Valheim +app_update 896660 validate +exit 

cd ~/valheim

pattern='\[username\]'
username=$USER

wget -O start_valheim.sh https://raw.githubusercontent.com/eduelias/valheim-dedicated-server/main/start_valheim.sh
sed -i "s@$pattern@$username@g" start_valheim.sh
wget -O valheim.service https://raw.githubusercontent.com/eduelias/valheim-dedicated-server/main/valheim.service 
sed -i "s@$pattern@$username@g" valheim.service

cd /etc/systemd/system 
sudo ln -s /home/$USER/Valheim/valheim.service valheim.service

sudo systemctl daemon-reload
sudo systemctl start valheim
sudo systemctl status valheim

