# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
# ZSH_THEME="hbom-custom"
# source ~/.oh-my-zsh/catppuccin_latte-zsh-syntax-highlighting.zsh

# Next variables only for typewritten theme
ZSH_THEME="typewritten/typewritten"
export TYPEWRITTEN_PROMPT_LAYOUT="singleline"
export TYPEWRITTEN_SYMBOL="$"
export TYPEWRITTEN_RELATIVE_PATH="adaptive"
# export TYPEWRITTEN_LEFT_PROMPT_PREFIX_FUNCTION=(date +%H:%M:%S)
export TYPEWRITTEN_CURSOR="terminal"

export ZSH_TMUX_AUTOSTART=false
export ZSH_TMUX_AUTOQUIT=false
export ZSH_TMUX_AUTONAME_SESSION=true

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	aliases
	alias-finder
	composer
	docker
	docker-compose
	# common-aliases
	# extract
	# gh
	# git-flow
	# redis-cli
	# symfony2
	# thefuck
	# timer
	themes
	ubuntu
	zsh-interactive-cd
	zsh-autosuggestions
	alias-tips
	zsh-completions
	# kubectl
	# kubectx
	tmux
	# zsh-syntax-highlighting

	hbom-custom
)

# RPS1='$(kubectx_prompt_info)'
	
source $ZSH/oh-my-zsh.sh
# source <(werf completion --shell=zsh)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias q="exit"
alias c="clear"

export EDITOR=nvim
export PATH=$PATH:/opt/nvim-linux64/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/hbom/go/bin
export PATH=$PATH:/Users/hbom/go/bin
# export GOPATH="${HOME}/dev"
# export PATH="$GOPATH/bin"
export PATH="${PATH}:${HOME}/.krew/bin"
export PATH=$HOME/.local/bin:$PATH
#export BROWSER=wslview

# Brew
# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(/opt/homebrew/bin/brew shellenv)"

# cd ~
# [[ "$PATH" == *"$HOME/bin:"* ]] || export PATH="$HOME/bin:$PATH"
# ! { which werf | grep -qsE "^/home/hbom/.trdl/"; } && [[ -x "$HOME/bin/trdl" ]] && source $("$HOME/bin/trdl" use werf "1.2" "stable")
# ! { which werf | grep -qsE "^/home/hbom/.trdl/"; } && [[ -x "$HOME/bin/trdl" ]] && source $("$HOME/bin/trdl" use werf "1.1" "stable")

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# tmuxifier
# export PATH="$HOME/.tmuxifier/bin:$PATH"
# eval "$(tmuxifier init -)"

eval "$(zoxide init zsh --cmd j)"

# The next line updates PATH for CLI.
if [ -f '/home/hbom/yandex-cloud/path.bash.inc' ]; then source '/home/hbom/yandex-cloud/path.bash.inc'; fi

# The next line enables shell command completion for yc.
if [ -f '/home/hbom/yandex-cloud/completion.zsh.inc' ]; then source '/home/hbom/yandex-cloud/completion.zsh.inc'; fi


# fzf config
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS="--border --height 40% --tmux right,50% \
	--color=bg+:#ccd0da,bg:#eff1f5,spinner:#dc8a78,hl:#d20f39 \
	--color=fg:#4c4f69,header:#d20f39,info:#8839ef,pointer:#dc8a78 \
	--color=marker:#7287fd,fg+:#4c4f69,prompt:#8839ef,hl+:#d20f39 \
	--color=selected-bg:#bcc0cc
"
export PATH=$HOME/dev/git-fuzzy/bin:$PATH

# sesh
# https://github.com/joshmedeski/sesh
function sesh-sessions() {
  {
    exec </dev/tty
    exec <&1
    local session
    session=$(sesh list -t -c | fzf --height 40% --reverse --border-label ' sesh ' --border --prompt '⚡  ')
    zle reset-prompt > /dev/null 2>&1 || true
    [[ -z "$session" ]] && return
    sesh connect $session
  }
}

zle     -N             sesh-sessions
bindkey -M emacs '\es' sesh-sessions
bindkey -M vicmd '\es' sesh-sessions
bindkey -M viins '\es' sesh-sessions

export GPG_TTY=$(tty)
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
