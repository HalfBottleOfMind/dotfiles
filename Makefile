link-nvim:
	./scripts/link-nvim.sh

link-zsh:
	./scripts/link-zsh.sh

link-hypr:
	mv ~/.config/hypr ~/.config/hypr-backup
	ln -s "$(shell pwd)/hypr" ~/.config/hypr

tmux-install:
	./scripts/tmux-install.sh

tmux-link-theme:
	ln -s "$(shell pwd)/tmux/catppuccin_hbom.tmuxtheme" ~/.tmux/plugins/tmux/themes/catppuccin_hbom.tmuxtheme
