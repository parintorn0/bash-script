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
echo "Downloading..."
curl -sL "https://github.com/zen-browser/desktop/releases/latest/download/zen.linux-x86_64.tar.xz" > /tmp/zen.linux-x86_64.tar.bz2
echo "Downloaded"
echo ""
echo ""
echo "Extracting..."
sudo tar xf /tmp/zen.linux-x86_64.tar.bz2 -C /opt/
sudo rm /tmp/zen.linux-x86_64.tar.bz2
echo "Extracted"
echo ""
echo ""
if [ -f /usr/share/applications/zen.desktop ]; then
    sudo rm /usr/share/applications/zen.desktop
    echo "Previous Desktop Entry Removed"
fi
echo "[Desktop Entry]
Name=Zen Browser
Comment=Experience tranquillity while browsing the web without people tracking you!
Keywords=web;browser;internet
Exec=/opt/zen/zen-bin %u
Icon=/opt/zen/browser/chrome/icons/default/default128.png
Terminal=false
StartupNotify=true
StartupWMClass=zen
NoDisplay=false
Type=Application
MimeType=text/html;text/xml;application/xhtml+xml;application/vnd.mozilla.xul+xml;text/mml;x-scheme-handler/http;x-scheme-handler/https;
Categories=Network;WebBrowser;
Actions=new-window;new-private-window;profile-manager-window;
PrefersNonDefaultGPU=true
X-KDE-RunOnDiscreteGpu=true
[Desktop Action new-window]
Name=Open a New Window
Exec=/opt/zen/zen-bin --new-window %u
[Desktop Action new-private-window]
Name=Open a New Private Window
Exec=/opt/zen/zen-bin --private-window %u
[Desktop Action profile-manager-window]
Name=Open the Profile Manager
Exec=/opt/zen/zen-bin --ProfileManager" >> /tmp/zen.desktop
sudo mv /tmp/zen.desktop /usr/share/applications/zen.desktop
sudo rm /tmp/zen.desktop
echo "Desktop Entry Added"
echo ""
echo ""
echo "Installation Completed"