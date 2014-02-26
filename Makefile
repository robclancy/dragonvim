SHELL := /bin/bash
rawwr="\" Initiate DragonVim\nsource $(PWD)/plugins/vim-pathogen/autoload/pathogen.vim\nexecute pathogen\#infect('plugins/{}', '$(PWD)/plugins/{}')\nsource $(PWD)/vimrc\n\" End DragonVim\n"

all:
	[[ -d ~/.vim ]] || mkdir ~/.vim
	[[ -d ~/.vim/colors ]] || mkdir ~/.vim/colors
	[[ -f ~/.vimrc ]] || touch ~/.vimrc

	echo -e $(rawwr) > _tmp
	echo "" >> _tmp
	cat ~/.vimrc >> _tmp
	mv _tmp ~/.vimrc

	echo -e "\n\e[31mRawwr \e[32mDragonVim installed"

.PHONY: all