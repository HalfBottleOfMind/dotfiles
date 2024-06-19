#!/bin/bash

if [ -f ~/.tmux.conf ]; then
	echo "~/.tmux.conf exists"
	mv ~/.tmux.conf ~/.tmux.conf-backup
fi

ln -s "$(pwd)/tmux/.tmux.conf" ~/.tmux.conf
echo "~/.tmux.conf linked"

if [ -d ~/.tmux/plugins/tmux/custom ]; then
	echo "~/.tmux/plugins/tmux/custom exists"
	mv ~/.tmux/plugins/tmux/custom ~/.tmux/plugins/tmux/custom-backup
fi

ln -s "$(pwd)/tmux/custom" ~/.tmux/plugins/tmux/custom
echo "~/.tmux/plugins/tmux/custom linked"
