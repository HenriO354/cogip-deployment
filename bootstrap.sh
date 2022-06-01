#!/usr/bin/bash

DBHOST=localhost
DBNAME=cogip
DBUSER=cogip
DBPASSWD=cogippass

# Update Packages
apt update
# Upgrade Packages
apt upgrade -y

# Apache
apt install -y apache2

# Enable Apache Mods
a2enmod rewrite

# Install PHP
apt install -y php

# PHP Apache Mod
apt install -y libapache2-mod-php

# Restart Apache
systemctl restart apache2

# Set MySQL Pass
debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

# Install MySQL
apt install -y mysql-server

# Create cogip database
mysql -uroot -proot -e "CREATE DATABASE $DBNAME;"
# Create non-root user and grant priviledge on cogip database
mysql -uroot -proot -e "CREATE USER '$DBUSER'@'$DBHOST' IDENTIFIED BY '$DBPASSWD';"
mysql -uroot -proot -e "GRANT ALL PRIVILEGES ON $DBNAME.* TO '$DBUSER'@'$DBHOST';"
mysql -uroot -proot -e "FLUSH PRIVILEGES;"

# Create tables into cogip database
mysql -uroot -proot $DBNAME < /var/www/html/database/cogip.sql
# Insert a user into user table
mysql -uroot -proot $DBNAME -e "INSERT INTO user(username,password,mode) VALUES('Henri',henripassword','winner');"

# PHP-MYSQL lib
apt install -y php-mysql

# Edit apache default config
cp /var/wwww/html/000-default.conf /etc/apache2/sites-available/000-default.conf

# Restart Apache
systemctl restart apache2
