#! /bin/sh

sudo apt-get install usbmount
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo pip install pexpect

sudo apt-get remove omxplayer
sudo rm -rf /usr/bin/omxplayer /usr/bin/omxplayer.bin /usr/lib/omxplayer
sudo wget -O- http://yokto.net/0/omxplayer/omxplayer-3176db4.tar.bz2 | tar -C / -xjvf -
sudo ln -sf /lib/arm-linux-gnueabihf/libpcre.so.3 /lib/arm-lsudo inux-gnueabihf/libpcre.so.1
sudo wget -O /usr/bin/omxplayer-sync https://github.com/turingmachine/omxplayer-sync/raw/master/omxplayer-sync
sudo chmod 0755 /usr/bin/omxplayer-sync
sudo wget https://github.com/turingmachine/omxplayer-sync/raw/master/synctest.mp4


sudo update-rc.d -f omxplayer_sync_initd remove
sudo cp  omxplayer_sync_initd /etc/init.d/omxplayer_sync_initd
sudo chmod 755 /etc/init.d/omxplayer_sync_initd
sudo update-rc.d omxplayer_sync_initd defaults

