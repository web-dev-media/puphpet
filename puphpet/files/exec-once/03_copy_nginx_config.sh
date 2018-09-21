# increase fastcgi timeout to 5 min
sudo cp -v /var/www/config/vagrant/nginx_global.conf /etc/nginx/conf.d/my.conf

sudo service nginx restart