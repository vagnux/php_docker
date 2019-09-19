docker build . -t php_docker
sudo cp php.sh /usr/bin/php
sudo cp php-cs-fixer.sh /usr/bin/php-cs-fixer
sudo cp composer.sh /usr/bin/composer
sudo chmod +x /usr/bin/composer
sudo chmod +x /usr/bin/php-cs-fixer
sudo chmod +x /usr/bin/php
sudo ln -s /usr/bin/php-cs-fixer /usr/local/bin/
