#! /bin/bash

#Conf file
. $PWD/config.cfg 

####################################
Red='\033[0;31m'
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
NC='\033[0m' # No Color
####################################

echo Interfaz wifi ${Red} "$INTERFACE" ${NC}
echo Nombre de red ${Green} "$SSID" ${NC}
echo Contraseña ${Yellow} "$PASSWORD" ${NC}
echo "(DEFINIDO POR ARCHIVO DE CONFIGURACION CONFIG.CFG)"

nmcli device wifi hotspot ifname $INTERFACE ssid $SSID con-name AUTOHOTSPOT password $PASSWORD

echo To close hotspot type "nmcli connection down AUTOHOTSPOT"
#inxi -Fxz
