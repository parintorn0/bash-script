echo "(ﾉ◕ヮ◕)ﾉ*:･ﾟ✧  Zen Browser Installer"
echo ""
echo ""

if [ -d /opt/zen ]; then
    echo "Let installer use root user account"
    sudo rm -R /opt/zen/
    echo "Previous Installation Removed"
    echo ""
    echo ""
fi

curl -L "https://github.com/zen-browser/desktop/releases/latest/download/zen.linux-x86_64.tar.bz2" > /tmp/zen.linux-x86_64.tar.bz2
echo "Downloaded Zen Browser"
echo ""
echo ""
echo "Extracting..."
sudo tar xf /tmp/zen.linux-x86_64.tar.bz2 -C /opt/
echo "Extracted"
sudo rm /tmp/zen.linux-x86_64.tar.bz2
echo "Installation Completed"