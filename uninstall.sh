
username=$(whoami);

FILE=/home/"$username"/server/true.txt




  echo "uninstalling"
if [ ! -f "$FILE" ]; then
    cd /home/"$username"/
    rm -rf server
fi


if ! "$FILE"; then
echo "uninstall successful!"
cd /home/"$username"/Desktop
rm -rf startserver.sh
fi