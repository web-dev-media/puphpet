#!/bin/sh
sudo echo export APP_ENV="dev" >> /etc/environment
sudo echo export XDEBUG_CONFIG="idekey=PHPSTORM" >> /etc/environment
sudo echo export NODE_ENV="development" >> /etc/environment

echo "Set Environment variables!"