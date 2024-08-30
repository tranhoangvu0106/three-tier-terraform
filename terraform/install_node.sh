#! /bin/bash
sudo apt update -y
sudo apt install -y curl
sudo apt install -y build-essential
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt install -y nodejs
