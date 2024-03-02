username=$(whoami);







FILE=/home/"$username"/server/true.txt
if [ ! -f "$FILE" ]; then
    echo "File not found!"
    cd /home/"$username"/
    mkdir server
    cd server
    touch true.txt
    touch eula.txt
    result=$(dialog --title "EULA" --inputbox "Do you accept minecrafts EULA?:" 10 40 2>&1 >/dev/tty)
    # Example: Check if the user's response is "yes" (case-insensitive)
if [[ "${result,,}" == "yes" ]]; then
    echo "eula=true" > /home/"$username"/server/eula.txt
else
    bash uninstall.sh
    exit 400
fi

    
    
    wget  -P /home/"$username"/server/ "https://piston-data.mojang.com/v1/objects/8dd1a28015f51b1803213892b50b7b4fc76e594d/server.jar"
    cd ..
    cd Desktop
    touch startserver.sh
    echo username=$(whoami) > startserver.sh
    echo "cd /home/"$username"/server" >> startserver.sh
    echo "java -Xmx1024M -Xms1024M -jar server.jar" >> startserver.sh
fi


if test -f "$FILE"; then
echo "mkdir successful"
cd /home/"$username"/server/
rm -rf true.txt
fi
