#!/bin/bash

if [ -f ~/.zshrc ]; then
	echo "~/.zshrc exists"
	mv ~/.zshrc ~/.zshrc-backup
fi

ln -s "$(pwd)/oh-my-zsh/.zshrc" ~/.zshrc
echo "~/.zshrc linked"
