#!/bin/bash
cd /usr/share/nginx/html/src
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.bashrc
nvm install --lts
nvm uinstall
nvm install 16.0.0

sudo su
npm install express
npm install pm2 -g
pm2 start index.js
