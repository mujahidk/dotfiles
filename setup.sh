#!/bin/bash

echo "Configuring dotfiles."

ln -s ~/Projects/Personal/dotfiles/debian/bash_aliases ~/.bash_aliases
ln -s ~/Projects/Personal/dotfiles/debian/bashrc ~/.bashrc
ln -s ~/Projects/Personal/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/Projects/Personal/dotfiles/alacritty.yml ~/.alacritty.yml
ln -s ~/Projects/Personal/dotfiles/gitconfig ~/.gitconfig

mkdir -p ~/.config/nvim/
ln -s ~/Projects/Personal/dotfiles/vimrc ~/.config/nvim/init.vim
