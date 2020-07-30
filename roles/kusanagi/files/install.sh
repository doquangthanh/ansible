apt-get -y update
apt-get -y upgrade
apt-get -y autoremove
apt-get -y install htop
apt-get -y install software-properties-common
add-apt-repository ppa:ondrej/php
apt-get -y install php7.4  php7.4-cli php7.4-fpm-mysqlnd php7.4-fpm-zip php7.4-fpm-devel php7.4-fpm-gd php7.4-fpm-mcrypt php7.4-fpm-mbstring php7.4-fpm-curl php7.4-fpm-xml php7.4-fpm-pear php7.4-fpm-bcmath php7.4-fpm-json
cd /home/web_apk
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
clear

apt-get install -y unzip xvfb libxi6 libgconf-2-4
apt-get install -y default-jdk
curl -sS -o - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add
echo "deb [arch=amd64]  http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list
apt-get -y upgrade
apt-get -y update
apt-get -y install google-chrome-stable

wget https://chromedriver.storage.googleapis.com/85.0.4183.38/chromedriver_linux64.zip
unzip chromedriver_linux64.zip

mv chromedriver /usr/bin/chromedriver
chown root:root /usr/bin/chromedriver
chmod +x /usr/bin/chromedriver
rm -rf chromedriver_linux64.zip
wget https://selenium-release.storage.googleapis.com/3.141/selenium-server-standalone-3.141.59.jar
mv selenium-server-standalone-3.141.59.jar selenium-server-standalone.jar
chmod +x selenium-server-standalone.jar

chmod +x composer.phar
mv composer.phar /usr/local/bin/composer
clear
echo "================================================================="
echo "Installation is complete."
echo "================================================================="