#!/bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd
echo "Đây là website test từ $(hostname -f)" > /var/www/html/index.html
