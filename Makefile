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

lazygit:
	sudo pacman -S lazygit

chrome:
	yay -S google-chrome

unzip:
	yay -S unzip

jb-font: unzip
	wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip
	unzip JetBrainsMono.zip -d ~/.fonts
	fc-cache -f -v

zsh:
	yay -S zsh

npm:
	yay -S npm
	sudo chown -R $(shell whoami): /usr/lib/node_modules

omz:
	sh -c "$(shell curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

typewritten:
	npm install -g typewritten

omz-plugins:
	git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
	git clone https://github.com/djui/alias-tips.git ~/.oh-my-zsh/custom/plugins/alias-tips
	git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
	yay -S zsh-syntax-highlighting
	ln -s "$(shell pwd)/oh-my-zsh/hbom-custom" ~/.oh-my-zsh/custom/plugins/hbom-custom
	curl -sSL https://storage.yandexcloud.net/yandexcloud-yc/install.sh | bash
	git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier
