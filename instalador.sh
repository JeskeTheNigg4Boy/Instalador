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
echo "Carpetas Creadas"
sleep 2
clear
# Lista de paquetes a instalar
paquetes=(
  "linuxlogo"
  "iptables"
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
echo "linuxlogo"
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
echo 'Port 30005' >> /etc/ssh/sshd_config
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


#Importador de  Scripts desde github
echo "Importando Scripts"
sleep 1
git clone --depth 1 https://github.com/JeskeTheNigg4Boy/Uex-Server /usr/local/sbin/scriptsV2
echo "Scripts importados"
sleep 2
clear
source ~/.bashrc
echo "Servidor perparado para la utilizacion, porfavor introdusca el siquiente comando para refrescar el PATH source ~/.bashrc y utilize el alias Exmenu para poder utilizar CETOS"

echo "Instaalador del sitio Web descargado. Ejecutelo para poner en linea"
sleep 2
