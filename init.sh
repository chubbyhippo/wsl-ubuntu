#!/usr/bin/env sh

sudo apt update -y
sudo DEBIAN_FRONTEND="noninteractive" apt upgrade -y

# mise
curl https://raw.githubusercontent.com/chubbyhippo/mise/main/install-bash.sh | /usr/bin/env bash
