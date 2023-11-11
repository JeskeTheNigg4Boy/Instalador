#!/bin/bash
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


sudo netplan apply
echo "Red configurada"
sleep 2

# La página web
echo "Preparando el sitio Web"
sudo ufw allow in "Apache"
sleep 2
sudo rm -r /var/www/html/
sudo git clone https://github.com/JBrusco27/ProyectoUEX2.0 /var/www/html/ProyectoUEX2.0
sudo mv /var/www/ProyectoUEX2.0 /var/www/html
sleep 2
sudo chown -R $USER:$USER /var/www/html

sudo a2ensite ProyectoUEX2.0
sudo a2dissite 000-default
sudo systemctl reload apache2

sleep 1
echo "Página web en línea"
sleep 2
