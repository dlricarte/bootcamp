#!/bin/bash

#Atualizar Servidor
apt-get update -y
apt-get upgrade -y
#Instalar Apache
apt-get install apache2 -y
#Instalar Unzip
apt-get install unzip -y
#Apagar arquivo html do apache2
rm /var/www/html/index.html
#Acessar a pasta temporaria do linux
cd /tmp
#Baixar repositório do github do desafio
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
#Descompactar repositorio
unzip main.zip
#Mover arquivos do repositorio para pasta do Apache2
mv /tmp/linux-site-dio-main/* /var/www/html
#Apagar repositorio da pasta temporaria do linux
rm -Rf /tmp/linux-site-dio-main
#Apagar arquivo compactado do repositorio da pasta temporaria do linux
rm main.zip
# Dar permissão para usuário do apache para os arquivos copiados para pasta do apache
chown www-data. -Rf /var/www/html
