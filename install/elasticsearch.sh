wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add - #add key
echo "deb http://packages.elastic.co/elasticsearch/2.x/debian stable main" | sudo tee -a /etc/apt/sources.list.d/elasticsearch-2.x.list #add repository
sudo apt-get update #update sources
sudo apt-get install elasticsearch -y #install ES
sudo update-rc.d elasticsearch defaults 95 10 #autostart
