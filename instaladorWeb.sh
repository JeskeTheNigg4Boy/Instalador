#!/bin/bash
clear
echo "Creando la base de datos"
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
echo "Aplicnado agustes de red"
sudo echo "Configurcion de la red
network:
  version: 2
  renderer: networkd
  ethernets:
    enp0s3:
      addresses:
        - 192.168.1.69/24
      gateway4: 192.168.1.1
      nameservers:
        addresses: [8.8.8.8, 8.8.4.4]" > /etc/netplan/00-installer-config.yaml
sudo netplan apply
echo "Red Configurada"
sleep 2

La pagina web
echo "Preparando el sitio Web"
sleep 2
sudo git clone -f https://github.com/JBrusco27/ProyectoUEX2.0 /var/www/
sleep 2
sudo chown -R $USER:$USER /var/www/ProyectoUEX2.0
sudo touch /etc/apache2/sites-available/ProyectoUEX2.0.conf
echo "<VirtualHost *:80>
    ServerName ProyectoUEX2.0
    ServerAlias www.ProyectoUEX2.0
    ServerAdmin webmaster@localhost
    DocumentRoot /var/www/ProyectoUEX2.0
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
" > /etc/apache2/sites-available/ProyectoUEX2.0.conf
sudo a2ensite ProyectoUEX2.0
sudo a2dissite 000-default
sudo systemctl reload apache2
sudo echo "<?php

\$servername = \"localhost:3306\"; // Dirección del servidor de la base de datos
\$username = \"adminDB\"; // Nombre de usuario de la base de datos
\$password = \"password\"; // Contraseña de la base de datos
\$dbname = \"uexproyecto\"; // Nombre de la base de datos
echo "Adaptando Base De Datos"
\$conn = new PDO(\"mysql:host=\$servername;dbname=\$dbname\", \$username, \$password);
\$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
?>" > /var/www/ProyectoUEX2.0/Backend/connect.php
sleep 1
echo "Pagina Web en linea"
sleep 2
