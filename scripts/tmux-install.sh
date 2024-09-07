#! /bin/bash

mkdir -p ~/.tmux/plugins/tmux
ln -s "$(pwd)/tmux/custom" ~/.tmux/plugins/tmux/custom
ln -s "$(pwd)/tmux/.tmux.conf" ~/.tmux.conf

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# install tmux
sudo pacman -S tmux
