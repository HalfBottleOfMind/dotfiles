link-nvim:
	./scripts/link-nvim.sh

link-tmux:
	./scripts/link-tmux.sh

link-zsh:
	./scripts/link-zsh.sh

link-hypr:
	mv ~/.config/hypr ~/.config/hypr-backup
	ln -s "$(pwd)/hypr" ~/.config/hypr
