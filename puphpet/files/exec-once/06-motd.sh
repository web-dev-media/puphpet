#! /usr/bin/env bash
#sudo cp /vagrant/puphpet/files/motd/* /etc/update-motd.d/
#sudo ln -s /vagrant/puphpet/files/motd/04-serverinfo /etc/update-motd.d/
#sudo ln -s /vagrant/puphpet/files/motd/05-domain-info /etc/update-motd.d/

#echo "Disable /var/run/motd.dynamic."
#sudo systemctl disable motd
#sudo rm /var/run/motd.dynamic

echo "Copy wp-puphpet motd files to /etc/update-motd.d"
sudo cp /vagrant/puphpet/files/motd/* /etc/update-motd.d/
sudo chmod +x /etc/update-motd.d/*

run-parts /etc/update-motd.d > /dev/null