link-nvim:
	./scripts/link-nvim.sh

link-zsh:
	./scripts/link-zsh.sh

link-hypr:
	mv ~/.config/hypr ~/.config/hypr-backup
	ln -s "$(shell pwd)/hypr" ~/.config/hypr

backup-kitty:
	mv ~/.config/kitty ~/.config/kitty-backup

link-kitty: backup-kitty
	ln -s "$(shell pwd)/kitty" ~/.config/kitty

tmux-install:
	./scripts/tmux-install.sh

tmux-link-theme:
	ln -s "$(shell pwd)/tmux/catppuccin_hbom.tmuxtheme" ~/.tmux/plugins/tmux/themes/catppuccin_hbom.tmuxtheme
