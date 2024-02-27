VERSIONFILE=/etc/mc-server/ver.txt
VERSION=$(cat "$VERSIONFILE")
LATESTVERSION=1.20.4
if [! "$VERSION" = "$LATESTVERSION"]
echo WARNING you are running an outdated version!
fi



