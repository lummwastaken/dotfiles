# Environment Variables
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/sbin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

export EDITOR="nvim"
export VISUAL="$EDITOR"

export PROJECTS="/home/liam/Documents/Projects"
# Aliases
alias projects='cd ~/Documents/Projects'

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias gaa='git add -A'
alias gap='git add -p'
alias gc='git commit'
alias gcm='git commit -m'
alias gp='git push'
alias gpu='git pull'
alias gco='git checkout'

alias vim="nvim"

# Oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(
	git
	sudo
	extract
	zsh-autosuggestions
	zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh
source <(fzf --zsh)

# Prompt
autoload -Uz vcs_info
precmd () { vcs_info }
zstyle ':vcs_info:*' formats ' %F{red}%b%f'
PS1='%B%n@%m%b %F{blue}%1~%f$vcs_info_msg_0_ $'
