#!/bin/bash

if [ -d ~/.config/nvim ]; then
	echo "nvim config exists"
	mv ~/.config/nvim ~/.config/nvim-backup
fi

ln -s "$(pwd)/nvim" ~/.config/nvim
