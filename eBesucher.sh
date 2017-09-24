apt-get update
apt-get -q -y --force-yes install tightvncserver xterm jwm mercurial libasound2-dev libcurl4-openssl-dev libnotify-dev libxt-dev libiw-dev mesa-common-dev autoconf2.13 yasm libidl-dev screen unzip bzip2 nano
wget http://ftp.mozilla.org/pub/firefox/releases/32.0/linux-i686/en-US/firefox-32.0.tar.bz2
wget https://raw.githubusercontent.com/5aimiku/ebesucher-for-debian/master/vncxstartup.txt https://raw.githubusercontent.com/5aimiku/ebesucher-for-debian/master/vncserverinit.txt
tar xjf firefox-32.0.tar.bz2
mv firefox/ /usr/local/lib/
ln -s /usr/local/lib/firefox/firefox /usr/bin/firefox
vncserver
rm -f ~/.vnc/xstartup
mv vncxstartup.txt ~/.vnc/xstartup
chmod +x ~/.vnc/xstartup
mv vncserverinit.txt /etc/init.d/vncserver
chmod +x /etc/init.d/vncserver
update-rc.d vncserver defaults
