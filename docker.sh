#!/bin/bash

# Mise à jour des paquets
sudo yum update -y

# Installation de Docker
sudo amazon-linux-extras install docker -y

# Start the Docker service
sudo systemctl start docker

# Ajout de l'utilisateur courant au groupe docker
sudo usermod -aG docker ec2-user

# Installation de Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Vérification de la version de Docker et de Docker Compose
docker --version
docker-compose --version



 