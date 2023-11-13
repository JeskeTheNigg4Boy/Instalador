#!/bin/bash
sudo rm -r /var/www/html/
sudo git clone https://github.com/JBrusco27/ProyectoUEX2.0 /var/www/ProyectoUEX2.0
sudo mv /var/www/ProyectoUEX2.0 /var/www/html
sleep 2
sudo chown -R $USER:$USER /var/www/html
