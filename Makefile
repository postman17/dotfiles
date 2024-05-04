install-homebrew:
	bash ./brew/install.sh

install-macos-zsh:
	bash ./zsh/install.sh

install-macos: install-homebrew install-macos-zsh

install: install-macos-zsh
