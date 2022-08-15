#!/bin/bash

echo "Atualizacoes de pacotes..."
apt-get update
apt-get upgrade -y

echo "Instalacao do Apache e Unzip..."
apt-get install apache2 -y
apt-get install unzip -y

echo "Obtencao do website(zip)..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactacao..."
unzip main.zip

echo "Copia para o diretorio padrao do apache..."
cd linux-site-dio-main
cp -R * /var/www/html

