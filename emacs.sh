#!/usr/bin/env bash

# install doomemacs
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
echo 'export PATH="$HOME/.config/emacs/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
