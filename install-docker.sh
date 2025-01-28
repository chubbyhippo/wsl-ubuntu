#!/usr/bin/env sh

curl -s https://get.docker.com | sudo /usr/bin/sh
sudo usermod -aG docker "$USER"
sudo systemctl enable docker.service
