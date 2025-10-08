#!/bin/bash
sudo docker swarm init --advertise-addr=10.10.10.100
sudo docker swarm join-token worker | grep docker > /vagrant/worker.sh

# Copia arquivos para fazer o build
mkdir -p /vagrant/apache
cp /vagrant/apache/index.html /vagrant/apache/arquivo01.txt /vagrant/apache/arquivo02.txt /vagrant/apache/Dockerfile /vagrant/apache/docker-compose.yml /home/vagrant/

# Faz Build da imagem
cd /home/vagrant
sudo docker build -t vagrant-apache .

# Cria o volume
sudo docker volume create apache-data
sudo docker run --rm -v apache-data:/data busybox cp /data/index.html /data/arquivo01.txt /data/arquivo02.txt

# Para Subir o serviço com 12 réplicas
sudo docker stack deploy -c docker-compose.yml apache_stack