#!/bin/bash
apt update
DEBIAN_FRONTEND=noninteractive apt -y install php-cli \
php-mbstring \
php-mysqli \
php-pdo \
freetds-common \
freetds-bin \
unixodbc \
php-sybase \
php-memcache \
php-memcached \
php-curl \
php-zip \
php-gd \
php-xml \
php-mbstring \
php-gmp \
php-soap \
php-xdebug \
wget \
curl \
php-sybase \
php-sqlite3 \
default-mysql-client
echo "Composer installing"
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer 

echo "phpcs installing"
wget  https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar -O /usr/bin/phpcs
chmod +x /usr/bin/phpcs
#find /etc/ -iname php.ini | awk  '{print "cat /xdebug.ini >> "$1}' | /bin/bash
find /etc/ -iname php.ini | awk  '{print "cp /php.ini "$1}' | /bin/bash
