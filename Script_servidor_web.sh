#! /bin/bash

echo "Realizando atualizações do sistema"
        apt update
        apt upgrade -y

echo "Instalando o Apache2"
        apt install apache2 -y

echo "Instalando Unzip"
        apt install unzip -y

echo "Baixando o site"
        cd /tmp
        wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/hea>

echo "Descompactando"
        unzip main.zip
        cd linux-site-dio-main

echo "Movendo arquivos"
        cp -R * /var/www/html/

echo "Finalizado"

