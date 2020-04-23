#!/bin/bash

# Update the sources list
sudo apt-get update -y

# upgrade any packages available
sudo apt-get upgrade -y

# install nginx
sudo apt-get install nginx -y

# install git
sudo apt-get install git -y

# install nodejs
sudo apt-get install python-software-properties
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs -y

sudo apt-get install npm -y
# install pm2
sudo npm install pm2 -g





cd /home/ubuntu/app
sudo npm install ejs mongoose express
node seeds/seed.js

sudo rm /etc/nginx/sites-enabled/default
sudo cp /home/ubuntu/environment/nodeapp.conf /etc/nginx/sites-available/default

# sudo ln -s /home/ubuntu/environment/default /etc/nginx/sites-enabled/default
# sudo service nginx configtest
# sudo service nginx restart
# cd /home/ubuntu/app
# nodejs app.js

# sudo systemctl stop nginx
sudo systemctl restart nginx
sudo nginx -t
