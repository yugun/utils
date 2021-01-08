all:
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	cp -r vim/.vim ~
	cp vim/.vimrc ~
	cp vim/.cscope_maps.vim ~
	cp git/.gitconfig ~
	cp tmux/.tmux.conf ~
	cp -r tmux/tmux-powerline ~
