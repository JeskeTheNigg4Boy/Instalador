#!/bin/bash
clear
echo "Creando directorios"
sleep 2
sudo groupadd usuarios
mkdir -p /usr/local/sbin/scriptsV2/
mkdir -p /var/mysql/
mkdir -p /var/mysql/DBuser
mkdir -p /var/mysql/DBweb
mkdir -p /var/backups/uex-user
mkdir -p /var/backups/uex-user/user
mkdir -p /var/backups/uex-user/pass
mkdir -p /var/backups/uex-user/group
mkdir -p ~/.config/rclone/
mkdir -p /home/pablo/Descargas/uex-user
sudo mkdir -p /etc/iptables
sudo touch /etc/iptables/rules.v4
echo "Carpetas Creadas"
sleep 2
clear
# Lista de paquetes a instalar
paquetes=(
  "python3-pip"
  "linuxlogo"
  "iptables"
  "iptables-persistent"
  "net-tools"
  "bat"
  "apache2"
  "base-files"
  "base-passwd"
  "bash"
  "bat"
  "cloud-init"
  "dash"
  "diffutils"
  "findutils"
  "firewalld"
  "grep"
  "gzip"
  "hostname"
  "init"
  "libapache2-mod-php"
  "libdebconfclient0"
  "libfwupdplugin1"
  "libsodium23"
  "libxmlb1"
  "linux-generic"
  "lsscsi"
  "mysql-server"
  "ncurses-base"
  "ncurses-bin"
  "net-tools"
  "nmap"
  "openssh-server"
  "php"
  "php-mysql"
  "python3-nacl"
  "python3-pymacaroons"
  "rclone"
  "rsync"
  "sysvinit-utils"
  "tree"
  "ubuntu-minimal"
  "ubuntu-server"
  "ubuntu-standard"
  "x11-xserver-utils"
)

for paquete in "${paquetes[@]}"
do
  sudo apt-get install -y "$paquete"
done
sleep 2

echo "Paquetes instalados"
sleep 2
clear

#Instalador de alias
echo "Creando alias"
echo 'alias scriptsV2="cd /usr/local/sbin/scriptsV2"' >> ~/.bashrc
echo 'alias mysql="cd /var/mysql"' >> ~/.bashrc
echo 'alias backups="cd /var/backups/uex-user"' >> ~/.bashrc
echo 'alias Exmenu="bash /usr/local/sbin/scriptsV2/CETOS.sh"' >> ~/.bashrc
echo "linuxlogo" >> ~/.bashrc
#ESTO SIEMPRE ABAJO DEL TODO DEL BASHRC !!!NO TOCAR!!!!
echo 'export PATH="$PATH:/usr/local/sbin/scriptsV2/*"' >> ~/.bashrc

source ~/.bashrc
pip3 install gdown
sleep 2
gdown --id 19MMvy4C1nviE0ZFVsj5SQUuO43R-E2ey
echo "Alias creados"
sleep 1
#Instalador del SSH
echo "Instalando y configurando el servicio SSH"
sudo apt-get install openssh-server
sudo systemctl start ssh
sudo systemctl enable ssh
echo 'Port 30005' >> /etc/ssh/sshd_config
sleep 3
sudo systemctl restart ssh
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
rclone_config="[Respaldos]
type = drive
client_secret = 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
scope = drive
root_folder_id = 1z5ZHeB5dXDjy0jYto86-kvhwfYBpL4mM
token = {\"access_token\":\"ya29.a0AfB_byC85cMxavs9QBej2d1WYeTw8k6WcC0c12LtnwR0T2VyYpiMljpmMvhhDkghv2OJtDHc-WsMhrk_bLVaJts_QcNsD_-zZkUHPTZE2n2d7ECsOXTgNoUm21_hvX4dzVh7Rafx4o8vwXyGfs9b2C1BGNyTu3bUsi_qaCgYKAd8SARESFQGOcNnCP6vq7idyHT8IIKsbr8v>
client_id = 824810420848-1a26jdr7kmmrqkrsq0c5iqa2iuceii4l.apps.googleusercontent.com"

# Verificar si el archivo de configuración de rclone existe
if [ ! -f ~/.config/rclone/rclone.conf ]; then
    echo "Configurando Rclone"
    sleep 2
    mkdir -p ~/.config/rclone/  # Crear el directorio si no existe
    touch ~/.config/rclone/rclone.conf  # Crear el archivo si no existe

    # Agregar la configuración de rclone al archivo
    echo "$rclone_config" >> ~/.config/rclone/rclone.conf

    echo "Rclone configurado"
    sleep 2
else
    echo "El archivo de configuración de Rclone ya existe."
fi







#Lo de la web

clear
echo "Creando la base de datos"

MYSQL_ROOT_PASSWORD="123"  # Añade esta línea para definir la contraseña de root

SQL_FILE=$(mktemp)
cat <<EOF > "$SQL_FILE"
CREATE USER 'AdminDB'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'AdminDB'@'localhost' WITH GRANT OPTION;
CREATE DATABASE uexproyecto;
USE uexproyecto;
SOURCE /home/pablo/uexproyecto.sql;
GRANT SELECT, SHOW VIEW, RELOAD, REPLICATION CLIENT, EVENT, TRIGGER ON *.* TO 'AdminDB'@'localhost';
FLUSH PRIVILEGES;
EOF

mysql -u root -p"$MYSQL_ROOT_PASSWORD" < "$SQL_FILE"

rm "$SQL_FILE"


# La página web
echo "Preparando el sitio Web"
sudo ufw allow in "Apache"
sleep 2
sudo rm -r /var/www/html/
sudo git clone https://github.com/JBrusco27/ProyectoUEX2.0 /var/www/ProyectoUEX2.0
sudo mv /var/www/ProyectoUEX2.0 /var/www/html
sleep 2
sudo chown -R $USER:$USER /var/www/html

sudo a2ensite ProyectoUEX2.0
sudo a2dissite 000-default
sudo systemctl reload apache2

sleep 1
echo "Página web en línea"
sleep 2


#Importador de  Scripts desde github
echo "Importando Scripts"
sleep 1
git clone --depth 1 https://github.com/JeskeTheNigg4Boy/Uex-Server /usr/local/sbin/scriptsV2
echo "Scripts importados"
sleep 2
clear
source ~/.bashrc
echo "Servidor perparado para la utilizacion, porfavor introdusca el siquiente comando para refrescar el PATH source ~/.bashrc y utilize el alias Exmenu para poder utilizar CETOS"
sleep 2

sudo echo "# Generated by iptables-save v1.8.4 on Wed Nov 1 16:32:38 2023 *filter
*filter

:INPUT ACCEPT [0:0]
:FORWARD ACCEPT [0:0]
:OUTPUT ACCEPT [25:3484]

#para que no nos hagab ping
-A INPUT -p icmp -j DROP

#Trafico limitado en mysql
-A INPUT -p tcp --dport 3306 -m connlimit --connlimit-above 2 -j DROP
-A INPUT -p tcp --dport 3306 -j ACCEPT

#Trafico de drive
-A INPUT -p tcp --dport 1821 -j ACCEPT
#Trafico limitado de SSH
-A INPUT -p tcp --dport 30005 -m conntrack --ctstate NEW -m connlimit --connlimit-above 2 -j DROP
-A INPUT -p tcp --dport 30005 -j ACCEPT

-A INPUT -p tcp -m tcp --dport 80 -j ACCEPT
-A INPUT -p tcp -m tcp --dport 443 -j ACCEPT

:FORWARD ACCEPT [0:0]
:OUTPUT ACCEPT [25:3484]
COMMIT" > /etc/iptables/rules.v4

echo "Aplicando ajustes de red"
sudo echo "# Configuracion de la red
network:
  version: 2
  renderer: networkd
  ethernets:
    enp0s3:
      addresses:
        - 192.168.1.70/24
      gateway4: 192.168.1.1
      nameservers:
        addresses: [8.8.8.8, 8.8.4.4]" > /etc/netplan/00-installer-config.yaml
sudo systemctl restart networking
systemctl restart iptables
netplan apply

sudo chmod +x /usr/local/sbin/scriptsV2/*

sudo echo "<?php

\$servername = \"localhost:3306\"; // Dirección del servidor de la base de datos
\$username = \"adminDB\"; // Nombre de usuario de la base de datos
\$password = \"password\"; // Contraseña de la base de datos
\$dbname = \"uexproyecto\"; // Nombre de la base de datos
echo "Adaptando Base De Datos"
\$conn = new PDO(\"mysql:host=\$servername;dbname=\$dbname\", \$username, \$password);
\$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
?>" > /var/www/html/Backend/connect.php
sudo systemctl restart apache2
