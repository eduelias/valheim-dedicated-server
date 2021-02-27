#!/bin/bash

sudo apt update && sudo apt upgrade
sudo apt install software-properties-common
sudo add-apt-repository multiverse
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install lib32gcc1 steamcmd
ln -s /usr/games/steamcmd steamcmd

./steamcmd.sh +login anonymous + force_install_dir /home/$USER/Valheim +app_update 896660 validate +exit 

sed -i "s/\[username\]/$(whoami)/g" start_valheim.sh
sed -i "s/\[username\]/$(whoami)/g" valheim.service

cd /etc/systemd/system 
ln -s /home/[username]/Valheim/valheim.service valheim.service

