username=$(whoami);
touch /home/"$username"/Desktop/"$date".txt
FILE=/home/"$username"/server/true.txt
if [ ! -f "$FILE" ]; then
    echo "File not found!"
    cd /home/"$username"/
    mkdir server
    echo "created server directory" >> /home/"$username"/Desktop/"$date".txt
    cd server
    echo "cd -ed to server directory" >> /home/"$username"/Desktop/"$date".txt
    touch true.txt
    echo "created temporary file "true.txt" server directory" >> /home/"$username"/Desktop/"$date".txt
    touch eula.txt
    echo "created "eula.txt" in server directory" >> /home/"$username"/Desktop/"$date".txt
    echo "eula=true" > /home/"$username"/server/eula.txt
    echo "wrote "eula=true" to eula.txt in server directory" >> /home/"$username"/Desktop/"$date".txt
    wget  -P /home/"$username"/server/ "https://piston-data.mojang.com/v1/objects/8dd1a28015f51b1803213892b50b7b4fc76e594d/server.jar"
    echo "downloaded "server.jar" into server directory" >> /home/"$username"/Desktop/"$date".txt
    cd ..
    echo "cd -ed to user home from server directory" >> /home/"$username"/Desktop/"$date".txt
    cd Desktop
    echo "cd -ed to Desktop" >> /home/"$username"/Desktop/"$date".txt
    touch startserver.sh
    echo "created "startserver.sh"" >> /home/"$username"/Desktop/"$date".txt
    echo username=$(whoami) > startserver.sh
    echo "added username to "startserver.sh"" >> /home/"$username"/Desktop/"$date".txt
    echo "cd /home/"$username"/server" >> startserver.sh
    echo "added cd to server directory into "startserver.sh"" >> /home/"$username"/Desktop/"$date".txt
    echo "java -Xmx1024M -Xms1024M -jar server.jar" >> startserver.sh
    echo "added start server.jar located in server directory to "startserver.sh"" >> /home/"$username"/Desktop/"$date".txt
fi


if test -f "$FILE"; then
echo "setup successful"
cd /home/"$username"/server/
echo "cd -ed to server directory" >> /home/"$username"/Desktop/"$date".txt
rm -rf true.txt
echo "deleted temporary file "true.txt" from server directory" >> /home/"$username"/Desktop/"$date".txt
fi
echo "completed setup" >> /home/"$username"/Desktop/"$date".txt