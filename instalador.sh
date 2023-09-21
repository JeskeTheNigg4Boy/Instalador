#!/bin/bash
clear
echo "Creando directorios"
sleep 2
sudo groupadd usuarios
mkdir -p /usr/local/sbin/scriptsV2/
mkdir -p /var/mysql/
mkdir -p /var/backups/uex-user
mkdir -p /var/backups/uex-user/user
mkdir -p /var/backups/uex-user/pass
mkdir -p /var/backups/uex-user/group
echo "Carpetas directorios"
sleep 2
clear
#Instalador de paquetes
echo "Instalado paquetes"
sudo apt-get install net-tools
sudo apt-get install bat
sudo apt-get install apache2
sudo apt-get install base-files
sudo apt-get install base-passwd
sudo apt-get install bash
sudo apt-get install bat
sudo apt-get install cloud-init
sudo apt-get install dash
sudo apt-get install diffutils
sudo apt-get install findutils
sudo apt-get install firewalld
sudo apt-get install grep
sudo apt-get install gzip
sudo apt-get install hostname
sudo apt-get install init
sudo apt-get install libapache2-mod-php
sudo apt-get install libdebconfclient0
sudo apt-get install libfwupdplugin1
sudo apt-get install libsodium23
sudo apt-get install libxmlb1
sudo apt-get install linux-generic
sudo apt-get install lsscsi
sudo apt-get install mysql-server
sudo apt-get install ncurses-base
sudo apt-get install ncurses-bin
sudo apt-get install net-tools
sudo apt-get install nmap
sudo apt-get install openssh-server
sudo apt-get install php
sudo apt-get install php-mysql
sudo apt-get install python3-nacl
sudo apt-get install python3-pymacaroons
sudo apt-get install rclone
sudo apt-get install rsync
sudo apt-get install sysvinit-utils
sudo apt-get install tree
sudo apt-get install ubuntu-minimal
sudo apt-get install ubuntu-server
sudo apt-get install ubuntu-standard
sudo apt-get install x11-xserver-utils
sleep 2

echo "Paquetes instalados"
sleep 2
clear

#Instalador de alias
echo "Creando alias"
echo 'alias scriptsV2="cd /usr/local/sbin/scriptsV2"' >> ~/.bashrc
echo 'alias mysql="cd /var/mysql"' >> ~/.bashrc
echo 'alias backups="cd /var/backups/uex-user"' >> ~/.bashrc
echo 'alias Exmenu="bash /usr/local/sbin/scriptsV2/CETOS.sh"'

#ESTO SIEMPRE ABAJO DEL TODO DEL BASHRC !!!NO TOCAR!!!!
echo 'export PATH="$PATH:/usr/local/sbin/scriptsV2/*"' >> ~/.bashrc

source ~/.bashrc

sleep 2

echo "Alias creados"
sleep 1

#Instalador del SSH
echo "Instalando y configurando el servicio SSH"
sudo apt-get install openssh-server
sudo systemctl start ssh
sudo systemctl enable ssh
echo 'Port 22' >> /etc/ssh/sshd_config
sleep 3
echo "Servicio SSH instalado"
sleep 1
clear

#Instalador del MYSQL
echo "Instalando y configurando el servicio MYSQL"
sudo apt-get install mysql-server
sudo systemctl start mysql
sudo systemctl enable mysql
sleep 3
echo "Servicio MYSQL instalado"
sleep 1
clear

#Importador rclone
echo "Configurando Rclone"
sleep 2
echo "[Respaldos]
type = drive
client_secret = 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
scope = drive
root_folder_id = 0AN9Na8E-CdO7Uk9PVA
token = {\"access_token\":\"ya29.a0AfB_byC73aU6LPuFYnZBJ3vPU197ecMheqib-tjSnaE-aamOgB1h3iJCnSoxAZbrUFxZQkMkZ7Gc1uzhNeRo1YmykVmsAroq1mlMQw-6FI8qd3EPxb7Z63PpDIZijsS5A-4aw3GGk7uKsPLjUMKozb6GnPofbT_shWtraCgYKAU8SARMSFQGOcNnCmUShABs0Z7IA12CSskQ>
client_id = 1033571120017-mh9m4ke5s300hd4llislteqfvl7i0voc.apps.googleusercontent.com" >> ~/.config/rclone/rclone.conf
echo "Reclone configurado"
sleep 2
clear

#Importador de  Scripts desde github
echo "Importando Scripts"
sleep 1
git clone --depth 1 https://github.com/JeskeTheNigg4Boy/Uex-Server /usr/local/sbin/scriptsV2
echo "Scripts importados"
sleep 2
clear

echo "Servidor perparado para la utilizacion, utilize el alias Exmenu para poder utilizar CETOS"
sleep 2
