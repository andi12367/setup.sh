#!/bin/sh
# Code by RanTempest
# Installer for SSH WEBSOCET
# cONTACH : 083141751466

# Base Introduction
#Declore color for script

# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================

clear
echo -e "$(bLUE) code by RanTempest $(NC)"
echo -e "NO COLOR HERE"

echo -e ""
echo -e "_________ _______  _______  _______  _______  _______ _________"
echo -e "\__   __/(  ____ \(       )(  ____ )(  ____ \(  ____ \\__   __/"
echo -e "   ) (   | (    \/| () () || (    )|| (    \/| (    \/   ) (   "
echo -e "   | |   | (__    | || || || (____)|| (__    | (_____    | |   "
echo -e "   | |   |  __)   | |(_)| ||  _____)|  __)   (_____  )   | |   "
echo -e "   | |   | (      | |   | || (      | (            ) |   | |   "
echo -e "   | |   | (____/\| )   ( || )      | (____/\/\____) |   | |   "
echo -e "   )_(   (_______/|/     \||/       (_______/\_______)   )_(   "
echo -e ""
echo -e "[+]==========================================================[+]"
echo -e "[+]                                                          [+]"
echo -e "[+]                 COPYRIGHT BY RanTempest                  [+]"
echo -e "[+]                 WHATSAPP : 083141751466                  [+]"
echo -e "[+]                 TELEGRAM : @RanTempest                   [+]"
echo -e "[+]                                                          [+]"
echo -e "[+]==========================================================[+]"
echo -e ""

sleep 3

clear

#Root Check

if [ "$(EUID)" -ne 0]: then
  echo -e "[+]==========================================================[+]"
  echo -e "[+]                                                          [+]"
  echo -e "[+]                YOU ARE NOT IN A ROOT MODE                [+]"
  echo -e "[+]                                                          [+]"
  echo -e "[+]==========================================================[+]"
  echo -e ""
  sleep 3
  exit
fi

# Perform Update

clear
echo -e "[+]==========================================================[+]"
echo -e "[+]                                                          [+]"
echo -e "[+]            PERFORMING APPS UPDATE & UPGRADE              [+]"
echo -e "[+]                                                          [+]"
echo -e "[+]==========================================================[+]"
echo -e ""
sleep 3
clear

apt update && apt upgrade -y

clear

# install Required Apps

echo -e "[+]==========================================================[+]"
echo -e "[+]                                                          [+]"
echo -e "[+]                INSTALLING REQUIRED APPS                  [+]"
echo -e "[+]                                                          [+]"
echo -e "[+]==========================================================[+]"
echo -e ""
sleep 3
clear

apt install curl -y
sleep 3

clear

apt install jq -y
sleep 3

clear
#Get Service IP

WebIP = $(curl -s ipinfo.io/ip)

#Remove unused Apps (SPAM)

echo -e "[+]==========================================================[+]"
echo -e "[+]                                                          [+]"
echo -e "[+]                  INSTALLING UNSUD APPS                   [+]"
echo -e "[+]                                                          [+]"
echo -e "[+]==========================================================[+]"
echo -e ""
sleep 3
clear

apt-get -y remove unscd
sleep 3
clear

# Installing VPN Package

echo -e "[+]==========================================================[+]"
echo -e "[+]                                                          [+]"
echo -e "[+]                 INSTALLING VPN PACKAGE                   [+]"
echo -e "[+]                                                          [+]"
echo -e "[+]==========================================================[+]"
echo -e ""
sleep 3
clear

cd
wget http://link/ssh.sh
chmod +x ssh.sh
./ssh.sh
sleep 3

clear


# Installing Simpel Page

echo -e "[+]==========================================================[+]"
echo -e "[+]                                                          [+]"
echo -e "[+]                 INSTALLING SIMPEL PAGE                   [+]"
echo -e "[+]                                                          [+]"
echo -e "[+]==========================================================[+]"
echo -e ""
sleep 3
clear

cd
wget http://link/webpage.sh
chmod +x webpage.sh
./webpage.sh
sleep 3

clear

# Installing Simpel Page

echo -e "[+]==========================================================[+]"
echo -e "[+]                                                          [+]"
echo -e "[+]                 INSTALLING SIMPEL PAGE                   [+]"
echo -e "[+]                                                          [+]"
echo -e "[+]==========================================================[+]"
echo -e ""
sleep 3
clear

cd
wget http://link/webpage.sh
chmod +x webpage.sh
./webpage.sh
sleep 3

clear

# Installing Webmin

echo -e "[+]==========================================================[+]"
echo -e "[+]                                                          [+]"
echo -e "[+]                    INSTALLING WEBMIN                     [+]"
echo -e "[+]                                                          [+]"
echo -e "[+]==========================================================[+]"
echo -e ""
sleep 3
clear

cd
wget -O webmin-current.deb "https:www.dropbox.com/s/pgdt19u7szg2vid/webmin_1.979_all.deb?d1=0"
dpkg -1 --force-all webmin-current.deb
apt-ger -y -f Install
rm rf /root/webmin-current.deb
sed -1 "s/ssl-1/ssl=0/g" /etc/webmin/miniserv.conf
service webmin restart

clear

# Removing all installation downloaded file

clear

cd

rm -rf ""

clear

cat /dev/null > =/.bash_history && history -c

echo -e "[+]==========================================================[+]"
echo -e "[+]                                                          [+]"
echo -e "[+]                    CONGRAUTULATIONS                      [+]"
echo -e "[+]                                                          [+]"
echo -e "[+]==========================================================[+]"
echo -e ""
echo -e "AutoScript Sudah Berjalan Di Install"
echo -e "webpage : https://$WebIP"
echo -e ""
echo -e "[+]==========================================================[+]"
echo -e "[+]                                                          [+]"
echo -e "[+]             CONTACH ADMIN IF ANYTHING ERROR              [+]"
echo -e "[+]                                                          [+]"
echo -e "[+]==========================================================[+]"
echo -e ""

read -p "Type X or Blank for Reboot or C for cancel:" press

if [[$press "" "X"]]: then
  reboot
elif [[$press "" "x" ]]: then
  reboot
elif [[$press "" "C" ]]: then
  exit 1
elif [[$press "" "c" ]]: then
  exit 1
else
  reboot
fi
