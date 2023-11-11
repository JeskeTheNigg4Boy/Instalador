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



sudo netplan apply
echo "Red configurada"
sleep 2

# La página web
echo "Preparando el sitio Web"
sudo ufw allow in "Apache"
sleep 2
sudo git clone https://github.com/JBrusco27/ProyectoUEX2.0 /var/www/html/ProyectoUEX2.0
sleep 2
sudo chown -R $USER:$USER /var/www/html/ProyectoUEX2.0
sudo touch /etc/apache2/sites-available/ProyectoUEX2.0.conf
echo "<VirtualHost *:80>
    ServerName ProyectoUEX2.0
    ServerAlias www.ProyectoUEX2.0
    ServerAdmin webmaster@localhost
    DocumentRoot /var/www/html/ProyectoUEX2.0
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
" | sudo tee /etc/apache2/sites-available/ProyectoUEX2.0.conf

sudo a2ensite ProyectoUEX2.0
sudo a2dissite 000-default
sudo systemctl reload apache2

sudo bash -c "echo '<?php

\$servername = \"localhost:3306\"; // Dirección del servidor de la base de datos
\$username = \"AdminDB\"; // Nombre de usuario de la base de datos
\$password = \"password\"; // Contraseña de la base de datos
\$dbname = \"uexproyecto\"; // Nombre de la base de datos

\$conn = new PDO(\"mysql:host=\$servername;dbname=\$dbname\", \$username, \$password);
\$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
?>' > /var/www/html/ProyectoUEX2.0/Backend/connect.php"

sleep 1
echo "Página web en línea"
sleep 2
