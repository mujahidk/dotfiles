#!/bin/bash

# https://www.atlassian.com/git/tutorials/dotfiles
if [ -d $HOME/.cfg ]; then
	echo 'Directory already exist.'
else
	git clone --bare https://github.com/mujahidk/dotfiles.git $HOME/.cfg
	mv $HOME/.bashr $HOME/.bashrc.bak
 	mv $HOME/.gitignore $HOME/.gitignore.bak
	/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME checkout ubuntu
fi

