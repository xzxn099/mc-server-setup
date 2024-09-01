#!/bin/bash

SERVER_DIR="./resources"

PROPERTIES_FILE="./server/server.properties"

sudo apt install -y openjdk-17-jre-headless screen

mkdir -p $SERVER_DIR
cd $SERVER_DIR

wget https://launcher.mojang.com/v1/objects/3737db93722a9e39eeada7c27e7aca28b144ffa7/server.jar

echo "eula=true" > eula.txt

# Start Minecraft server in screen session using the provided properties file
screen -S minecraft java -Xmx1024M -Xms1024M -jar server.jar nogui --server-properties ../$PROPERTIES_FILE

echo "Minecraft server installed and started in a screen session named 'minecraft'."
echo "To access the console, use 'screen -r minecraft'."
echo "You can configure the server by editing the 'server.properties' file."

