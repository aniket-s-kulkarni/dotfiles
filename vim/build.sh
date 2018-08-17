#!/bin/bash

[ -d /usr/include/lua5.1 ] || {
	echo "Lua devel not installed"
	exit 1
}

# Build and install vim w/ lua
cd /tmp && {
	git clone https://github.com/vim/vim
	git pull && git fetch
	cd vim/src
	make distclean # if vim was prev installed
	./configure --with-features=huge \
				--enable-rubyinterp \
				--enable-largefile \
				--disable-netbeans \
				--enable-pythoninterp \
				--with-python-config-dir=/usr/lib/python2.7/config \
				--enable-perlinterp \
				--enable-luainterp \
				--with-luajit \
				--enable-fail-if-missing \
				--with-lua-prefix=/usr/include/lua5.1 \
				--enable-cscope

	make
	sudo make install
}
