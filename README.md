# Installation Steps


## Things Installed

* `chezmoi`, `zsh`, `git`, `fzf`
* `kitty`
* `lazyvim`
* Install `g++` for `nvim-treesitter` to work
* If you see boxes in `nvim`, use a proper mono font.

## Old


1. Install `git`.
  - In Ubuntu/Linux Mint
    ```sh
	sudo apt install git
	```

1. Install `brew`.
   ```sh
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/ install.sh)"
   ```

   ```sh
   echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.profile
   ```

1. Restart for the above `.profile` change to take effect.

1. Set up [GitHub SSH keys](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/about-ssh).

1. Install `brew` packages.
   ```sh
   brew install chezmoi tmux vim git cmake python go nodejs starship fzf gh zsh gcc
   ```

1. Change default shell to `zsh`.

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
	

1. Use `chezmoi` to download dotfiles.
	```sh
	chezmoi init git@github.com:sanjaybv/dotfiles.git
	chezmoi apply
	```

1. Install `vim` plugins
   ```sh
   vim +'PlugInstall --sync' +qa
   ```

1. [Install YouCompleteMe](https://github.com/ycm-core/YouCompleteMe)
	```sh
	cd ~/.vim/plugged/YouCompleteMe
	python3 install.py --all
	```
