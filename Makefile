install_apps: 
	mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew	 
	brew bundle

install_vim_plugins: 
	mkdir -p ~/.vim/pack/interface/start/
	git clone https://github.com/altercation/vim-colors-solarized ~/.vim/pack/interface/start/vim-colors-solarized
	git clone https://github.com/itchyny/lightline.vim ~/.vim/pack/interface/start/lightline.vim

install_oh-my-zsh: 
	curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh

create_symlinks:
	ln -sf ${PWD}/git/.gitconfig ~/.gitconfig
	ln -sf ${PWD}/git/.gitignore_global ~/.gitignore_global
	ln -sf ${PWD}/git/.gitmessage ~/.gitmessage
	ln -sf ${PWD}/.zshrc ~/.zshrc
	ln -sf ${PWD}/.vimrc ~/.vimrc
	ln -sf ${PWD}/bin/* /usr/local/bin
	ln -sf ${PWD}/starship.toml ~/.config/starship.toml

edit_mac_config:
	defaults write -g InitialKeyRepeat -int 15
	defaults write -g KeyRepeat -int 2

	## Dock 
	defaults write com.apple.Dock orientation -string left
	defaults write com.apple.dock autohide -bool true
	defaults write com.apple.dock tilesize -int 46

	## Screenshot
	defaults write com.apple.screencapture location /Users/vincenthardouin/Desktop/screenshots

	killall SystemUIServer

install_app_store_apps:
	echo "ID iCloud :"
	read COMPTE
	echo "Compte: $COMPTE Password :"
	read -s PASSWORD
	mas signin $COMPTE "$PASSWORD"
# Install Magnet
	mas install 441258766
# Install Bear
	mas install 1091189122
# Install PiPer 
	mas install 1421915518
# Install iStat Menu
	mas install 1319778037	
# Install Giphy Capture 
	mas install 668208984
