  sudo systemctl disable getty@tty1.service
  cd /etc/systemd/system/getty.target.wants/
  sudo mv getty@tty1.service getty@tty2.service 
  cd ..
  sudo mv getty@tty1.service.d  getty@tty2.service.d/
