username=$(whoami);







FILE=/home/"$username"/server/true.txt
if [ ! -f "$FILE" ]; then
    echo "File not found!"
    cd /home/"$username"/
    mkdir server
    cd server
    touch true.txt
    touch eula.txt


    
    
    wget  -P /home/"$username"/server/ "https://piston-data.mojang.com/v1/objects/450698d1863ab5180c25d7c804ef0fe6369dd1ba/server.jar"
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
sudo touch /bin/server
sudo echo "#!/bin/bash

cd /home/"$username"/Desktop
bash startserver.sh" >> /bin/server
sudo chmod +x /usr/bin/server
