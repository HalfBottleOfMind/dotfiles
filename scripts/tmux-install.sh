#! /bin/bash

ln -s "$(pwd)/tmux/.tmux.conf" ~/.tmux.conf

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# install tmux
sudo pacman -S --noconfirm tmux
