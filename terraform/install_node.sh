#! /bin/bash
sudo yum update -y
sudo yum -y install curl
sudo yum install -y gcc-c++ make
sudo curl -sL https://rpm.nodesource.com/setup_16.x | bash -
sudo yum install -y nodejs
