#!/bin/bash

[ -f ~/.tmux.conf -o -d ~/.tmux ] && {
	bk="tmux-conf-backup-`date +%F_%H-%M-%S`.tgz"
	tar -C $HOME -czf $bk .tmux.conf .tmux && echo "Backed up current tmux settings to $bk"
}

echo "Removing old settings"
rm -fr ~/.tmux ~/.tmux.conf

cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp ${0%*/}/.tmux.conf.local ~/.tmux.conf.local
cd ~/.tmux && git apply ${0%*/}/scrollback.diff
