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

neovim-install:
	curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
	sudo rm -rf /opt/nvim
	sudo tar -C /opt -xzf nvim-linux64.tar.gz
	rm nvim-linux64.tar.gz

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

typewritten:
	git clone https://github.com/reobin/typewritten.git ~/.oh-my-zsh/custom/themes/typewritten

zoxide:
	curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

brew:
	/bin/bash -c "$(shell curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

omz:
	sh -c "$(shell curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

omz-plugins:
	git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
	git clone https://github.com/djui/alias-tips.git ~/.oh-my-zsh/custom/plugins/alias-tips
	git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
	yay -S zsh-syntax-highlighting
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
	ln -s "$(shell pwd)/oh-my-zsh/hbom-custom" ~/.oh-my-zsh/custom/plugins/hbom-custom
	ln -s "$(shell pwd)/oh-my-zsh/theme.zsh" ~/.oh-my-zsh/catppuccin_latte-zsh-syntax-highlighting.zsh
	curl -sSL https://storage.yandexcloud.net/yandexcloud-yc/install.sh | bash
	git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier

