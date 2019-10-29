create_gitconfig_symlink:
	if [ -f ~/.gitconfig ] ; then \
		echo "Remove ~/.gitconfig"; \
		rm ~/.gitconfig ; \
	fi;
	ln -sf ${PWD}/git/.gitconfig ~/.gitconfig
