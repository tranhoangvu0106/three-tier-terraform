#!/bin/bash
sudo apt update -y
sudo apt install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2
echo "Đây là website test từ $(hostname -f)" | sudo tee /var/www/html/index.html
