# Installation Steps


1. Install git
2. Install brew
3. Set up GitHub SSH keys
4. Install base16 colors
5. Install tmux plugin manager
6. Checkout dotfiles
7. Install vim plug
8. Install vim plugins
9. Install YouCompleteMe

---

1. Install chezmoi
	* Mac
		```sh
		/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
		brew install chezmoi tmux vim
		```
	* Ubuntu
		```sh
		snap install chezmoi
		apt install tmux vim
		```
1. [Set up GitHub SSH keys](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account) for the computer.

1. [base16](https://github.com/chriskempson/base16-shell)
	```sh
	git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
	```

1. [tmux plugin manager](https://github.com/tmux-plugins/tpm)
	```sh
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	```

1. [vim plug](https://github.com/junegunn/vim-plug)
	```sh
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	```

1. Use `chezmoi` to download dotfiles.
	```sh
	chezmoi init git@github.com:sanjaybv/dotfiles.git
	chezmoi apply
	```

1. [vim ycm plugin](https://github.com/ycm-core/YouCompleteMe)
	```
	brew install cmake python go nodejs
	cd ~/.vim/plugged/YouCompleteMe
	python3 install.py --all
	```
