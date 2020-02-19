#!/bin/bash

apt  update
DEBIAN_FRONTEND=noninteractive apt -y install php-cli
#DEBIAN_FRONTEND=noninteractive apt -y install apache2
DEBIAN_FRONTEND=noninteractive apt -y install php-mbstring
DEBIAN_FRONTEND=noninteractive apt -y install php-mysqli
DEBIAN_FRONTEND=noninteractive apt -y install php-pdo
#DEBIAN_FRONTEND=noninteractive apt -y install libapache2-mod-php
DEBIAN_FRONTEND=noninteractiveapt -y install freetds-common freetds-bin unixodbc php-sybase
DEBIAN_FRONTEND=noninteractive apt -y install php-memcache
DEBIAN_FRONTEND=noninteractive apt -y install php-memcached
DEBIAN_FRONTEND=noninteractive apt -y install php-curl
DEBIAN_FRONTEND=noninteractive apt -y install php-zip
DEBIAN_FRONTEND=noninteractive apt -y install php-gd
DEBIAN_FRONTEND=noninteractive apt -y install php-xml
DEBIAN_FRONTEND=noninteractive apt -y install php-mbstring
DEBIAN_FRONTEND=noninteractive apt -y install php-gmp
DEBIAN_FRONTEND=noninteractive apt -y install composer
DEBIAN_FRONTEND=noninteractive apt -y install php-soap
DEBIAN_FRONTEND=noninteractive apt -y install php-xdebug
DEBIAN_FRONTEND=noninteractive apt -y install wget
DEBIAN_FRONTEND=noninteractive apt -y install php-sybase
DEBIAN_FRONTEND=noninteractive apt -y install php-sqlite3
#DEBIAN_FRONTEND=noninteractive apt -y install mycli
DEBIAN_FRONTEND=noninteractive apt -y install default-mysql-client
wget https://cs.symfony.com/download/php-cs-fixer-v2.phar -O /usr/bin/php-cs-fixer
chmod +x /usr/bin/php-cs-fixer
#find /etc/ -iname php.ini | awk  '{print "cat /xdebug.ini >> "$1}' | /bin/bash
find /etc/ -iname php.ini | awk  '{print "cp /php.ini "$1}' | /bin/bash
