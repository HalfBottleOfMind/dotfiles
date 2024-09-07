#! /bin/bash

# install tmux
sudo pacman -S tmux

# link config file
rm ~/.tmux.conf
ln -s "$(pwd)/tmux/.tmux.conf" ~/.tmux.conf

# link custom folder
rm ~/.tmux/plugins/tmux/custom
ln -s "$(pwd)/tmux/custom" ~/.tmux/plugins/tmux/custom
