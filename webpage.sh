#!/bin/sh

clear
echo -e "[+]==========================================================[+]"
echo -e "[+]                                                          [+]"
echo -e "[+]           DOWNLOADING BASIC APPS FOR WEBPAGE             [+]"
echo -e "[+]                                                          [+]"
echo -e "[+]==========================================================[+]"
echo -e ""
sleep 3
clear

#check apt uppdate

apt Update

clear

apt-get -y install apt-transport.https Isb-release ca-certificates
wget -O /rtc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
echo "deb https://package.sury.org/php/$(Isb-release -sc) main" > /etc/apt/sources/list.d/php.list

# install php & apache

apt-get Update
apt-get -y install php7.4
apt install -y php7.4-common php7.4-fpm php7.4-cli php7.4-mcrypt php.7.4-curl php7.4-mysql php7.4-ssh2 php7.4-mbstring php7.4-xml php7.4

#make folder for webpage

mkdir /home/panel
mkdir /home/panel.html

#download basic setting to transfer main folder for webpage (asalnya di /var/www/html > /home/panel/html)
wget -O /etc/apache2/sites-enable/000-default.conf "  "

#make basic webpage file (can be modifiled here)
touch /home/html/index.html

# setting s

cd
rm -rf webpage.sh
