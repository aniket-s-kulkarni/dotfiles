#!/bin/bash

[ -d ~/.vim -o -f ~/.vimrc ] && {
	bk="vim-backup-`date +%F_%H-%M-%S`.tgz"
	tar -C $HOME -czf $bk .vim .vimrc && echo "Backed up current vim settings to $bk"
}

echo "Removing old settings"
rm -rf ~/.vimrc ~/.vim
ln -s ${0%*/}/.vimrc ~/.vimrc
mkdir -p ~/.vim/

echo "Getting Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Install all plugins"
vim +PluginInstall +qall
