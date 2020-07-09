#!/bin/bash


sudo apt-get update
sudo apt-get install -y default-jre vim
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo apt-get install -y apt-transport-https
echo "deb https://artifacts.elastic.co/packages/6.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-6.x.list
sudo apt-get update
sudo apt-get install -y elasticsearch

#wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.6.0.deb
