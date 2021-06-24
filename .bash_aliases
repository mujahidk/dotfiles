alias dts='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Store machine specific aliases in it's own file.
if [ -f ~/.local_aliases ]; then
    . ~/.local_aliases
fi

# Custom bin to store scripts and fun stuff.
export PATH=~/.local/cbin/:$PATH

alias ll='exa -alF'
alias la='exa -a'
alias l='exa -F'
alias tri='exa --tree --long'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias md='mkdir -p'

alias g='git'

alias dotfiles="cd ~/Projects/Personal/dotfiles/"
alias projects="cd ~/Projects/Work/"

eval "$(starship init bash)"

