#!/usr/bin/env sh

# install emacs
snap install emacs --classic

# install doomemacs
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install
