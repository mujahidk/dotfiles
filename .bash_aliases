alias dots='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Store machine specific aliases in it's own file.
if [ -f ~/.local_aliases ]; then
    . ~/.local_aliases
fi

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
