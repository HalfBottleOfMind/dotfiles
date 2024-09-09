#! /bin/bash

echo 'waybar setup started'

if ! waybar -v; then
	echo 'waybar not found. installing'
	yay -S --noconfirm waybar
fi

if [ -d ~/.config/waybar ]; then
	echo 'waybar config exists. creating backup'
	mv ~/.config/waybar ~/.config/waybar-backup
fi
ln -s "$(pwd)/waybar" ~/.config/waybar
echo 'waybar config linked'
