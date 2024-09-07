#! /bin/bash

# install tmux
pacman -S tmux
echo "tmux installed"

# link config file
rm ~/.tmux.conf
ln -s "$(pwd)/tmux/.tmux.conf" ~/.tmux.conf
echo "tmux config linked"

# link custom folder
rm ~/.tmux/plugins/tmux/custom
ln -s "$(pwd)/tmux/custom" ~/.tmux/plugins/tmux/custom
echo "custom plugins linked"
