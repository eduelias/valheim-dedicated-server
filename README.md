# valheim-dedicated-server

This repository helps you setup a dedicated server for Valheim using steamCMD and Linux

Requirements:
Ubuntu 18.04 or greater;
Network (duh)
Port-Forwarding for 2456-2458 (UDP/TCP)

To use it, run the following command on your bash:

```
wget -O - https://raw.githubusercontent.com/eduelias/valheim-dedicated-server/main/setup.sh | bash
```

# how to use

Open the game and check for the game name at the public games. If you didn't make any changes to the start_valheim.sh file, your game will be named "[your username] server" and have password "Your Password".

It usually takes 5 to 10 minutes for the game to be listed after a successfull start.

You can also use your machine's external IP to play. (I found out that you don't need to put the port on the connection screen inside the game).

# how to customize

Find a file named start_valheim.sh inside /home/[username]/Valheim and change the line:

```
./valheim_server.x86_64 -name "Your Server Name" -port 2456 -world "Dedicated" -password "Your Password" -public 1 > /dev/null &
```

You need to choose a differnet game name, a different world or a different password.

# Where to upload a savegame

Upload a world into the folder /home/[username]/.config/unity3d/IronGate/Valheim/worlds/[worldname].fwl (and .db)

To use the savegame, edit the file /home/[username]/Valheim/start_valheim.sh and put the worldname at the "-world" argument.

# next features:

Docker/Vagrant file
