#!/usr/bin/env bash
sudo apt-get update


# Install mysql and php
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password PASS'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password PASS'
sudo apt-get install -y mysql-server php5-fpm php5-cli php5-curl php5-mysql curl git-core nodejs npm

#change temporary password to blank
mysql -uroot -pPASS -e "SET PASSWORD = PASSWORD('');"
# install symphony
# curl -LsS http://symfony.com/installer > symfony.phar
# sudo mv symfony.phar /usr/local/bin/symfony
# chmod a+x /usr/local/bin/symfony

curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

sudo npm install -g bower
ln -s /usr/bin/nodejs /usr/bin/node

# Install commonly used php packages
sudo service php5-fpm restart
