#!/usr/bin/env sh

sudo apt update -y
sudo DEBIAN_FRONTEND="noninteractive" apt upgrade -y

# apt
curl https://raw.githubusercontent.com/chubbyhippo/wsl-ubuntu/refs/heads/main/apt.sh | /usr/bin/env sh
# snap
curl https://raw.githubusercontent.com/chubbyhippo/wsl-ubuntu/refs/heads/main/snap.sh | /usr/bin/env sh
# docker 
curl https://raw.githubusercontent.com/chubbyhippo/docker/refs/heads/main/install.sh | /usr/bin/env sh
# fzf
curl https://raw.githubusercontent.com/chubbyhippo/fzf/refs/heads/main/install.sh | /usr/bin/env sh
# mise
curl https://raw.githubusercontent.com/chubbyhippo/mise/refs/heads/main/install-bash.sh | /usr/bin/env bash
# starship
curl https://raw.githubusercontent.com/chubbyhippo/starship/main/install-bash.sh | /usr/bin/env bash
# bashrc
[ -f ~/.bashrc ] && curl https://raw.githubusercontent.com/chubbyhippo/wsl-ubuntu/main/.bashrc >> ~/.bashrc || curl https://raw.githubusercontent.com/chubbyhippo/wsl-ubuntu/main/.bashrc -o ~/.bashrc
