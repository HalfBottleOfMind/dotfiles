#! /bin/bash

echo 'hyprpaper setup started'

if ! hyprpaper --help; then
	echo 'hyprpaper not found. installing'
	yay -S --noconfirm hyprpaper
fi
