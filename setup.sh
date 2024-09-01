#!/bin/bash

SERVER_DIR="./dist"

PROPERTIES_FILE="./server/server.properties"

sudo apt install -y openjdk-17-jre-headless screen

mkdir -p $SERVER_DIR
cd $SERVER_DIR

wget https://launcher.mojang.com/v1/objects/3737db93722a9e39eeada7c27e7aca28b144ffa7/server.jar

echo "eula=true" > eula.txt


