#!/bin/bash

apt-get update
apt-get upgrade -y

echo "Instalando apache"

apt-get install apache2

echo "Instalando unzip"

apt-get install unzip

echo "Baixando a aplicação"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando"

unzip main.zip

echo "Copiando arquivos"

cd linux-site-dio-main  
cp -r * /var/www/html

