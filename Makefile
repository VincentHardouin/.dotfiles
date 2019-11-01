install_apps: 
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew bundle

install_vim_plugins: 
	mkdir -p ~/.vim/pack/interface/start/
	git clone https://github.com/altercation/vim-colors-solarized ~/.vim/pack/interface/start/vim-colors-solarized
	git clone https://github.com/itchyny/lightline.vim ~/.vim/pack/interface/start/lightline.vim

install_oh-my-zsh: 
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

create_symlinks:
	ln -sf ${PWD}/git/.gitconfig ~/.gitconfig
	ln -sf ${PWD}/.zshrc ~/.zshrc
	ln -sf ${PWD}/.vimrc ~/.vimrc
	ln -sf ${PWD}/bin/* /usr/local/bin
