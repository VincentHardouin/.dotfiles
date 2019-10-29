install_apps: 
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew bundle

create_symlinks:
	ln -sf ${PWD}/git/.gitconfig ~/.gitconfig
	ln -sf ${PWD}/.zshrc ~/.zshrc
	ln -sf ${PWD}/.vimrc ~/.vimrc
