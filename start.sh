java -Xmx1024M -Xms1024M -jar server.jar nogui --server-properties ../$PROPERTIES_FILE

echo "Minecraft server installed and started in a screen session named 'minecraft'."
echo "To access the console, use 'screen -r minecraft'."
echo "You can configure the server by editing the 'server.properties' file."
