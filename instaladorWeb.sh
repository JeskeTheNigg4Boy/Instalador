#!/bin/bash
sudo rm -r /var/www/html/
sudo git clone https://github.com/JBrusco27/ProyectoUEX2.0 /var/www/ProyectoUEX2.0
sudo mv /var/www/ProyectoUEX2.0 /var/www/html
sleep 2
sudo chown -R $USER:$USER /var/www/html
sudo echo "<?php

\$servername = \"localhost:3306\"; // Dirección del servidor de la base de datos
\$username = \"AdminDB\"; // Nombre de usuario de la base de datos
\$password = \"password\"; // Contraseña de la base de datos
\$dbname = \"uexproyecto\"; // Nombre de la base de datos
\$conn = new PDO(\"mysql:host=\$servername;dbname=\$dbname\", \$username, \$password);
\$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
?>" > /var/www/html/Backend/connect.php
