#!/bin/bash

sudo apt install -y openjdk-17-jre-headless screen

SERVER_DIR="/mc-server"

sudo mkdir $SERVER_DIR

cp ./server.properties $SERVER_DIR
cp ./start.sh $SERVER_DIR 

cd $SERVER_DIR

echo "eula=true" > eula.txt

wget https://launcher.mojang.com/v1/objects/3737db93722a9e39eeada7c27e7aca28b144ffa7/server.jar

if ! grep -q "^alias mc-start=" ~/.bashrc; then
    echo "alias mc-start=\"$SERVER_DIR/start.sh\"" >> ~/.bashrc
    echo "Alias 'mc-start' added to your .bashrc. Open a new terminal or run 'source ~/.bashrc' to use it."
else
    echo "Alias 'mc-start' already exists. No changes made."
fi
