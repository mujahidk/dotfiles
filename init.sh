#!/bin/bash

# https://www.atlassian.com/git/tutorials/dotfiles
if [ -d $HOME/.cfg ]; then
	echo 'Directory already exist.'
else
	git clone --bare https://github.com/mujahidk/dotfiles.git $HOME/.cfg
	[ ! -f $HOME/.bashrc ] || mv $HOME/.bashrc $HOME/.bashrc.bak
 	[ ! -f $HOME/.gitignore ] || mv $HOME/.gitignore $HOME/.gitignore.bak
 	[ ! -f $HOME/.gitconfig ] || mv $HOME/.gitconfig $HOME/.gitconfig.bak

	/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME checkout ubuntu
    /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME  config --local status.showUntrackedFiles no
fi

