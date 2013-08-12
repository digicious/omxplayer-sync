#! /bin/sh
sudo update-rc.d -f omxplayer_sync_initd remove
sudo cp  omxplayer_sync_initd /etc/init.d/omxplayer_sync_initd
sudo chmod 755 /etc/init.d/omxplayer_sync_initd
sudo update-rc.d omxplayer_sync_initd defaults
