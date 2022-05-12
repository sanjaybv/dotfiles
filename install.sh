# Install packages
if [ "$(uname)" == "Darwin" ]; then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	brew install chezmoi tmux vim git cmake python go nodejs starship fzf gh
else if [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
	# For gh cli tool
	curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
	echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null

	sudo apt update
	snap install chezmoi starship
	apt install tmux vim git cmake python go nodejs fzf gh
else
	echo "unknown OS environment $(uname -s). Install the following packages manually."
	echo "chezmoi tmux vim git cmake python go nodejs starship fzf gh"
	read -n 1 -r -p "Press any key to continue"
fi;

echo ">>> Setting up SSH Keys"
echo "Set up GitHub SSH Keys and then continue. https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account"
read -n 1 -r -p "Press any key to continue"

echo ">>> Installing base16-shell colors"
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

echo ">>> Installing tmux plugin manager"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo ">>> Installing vim-plug"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# GitHub SSH keys must be set up first.
echo ">>> Installing dotfiles via chezmoi"
chezmoi init git@github.com:sanjaybv/dotfiles.git
chezmoi -v apply

# Dotfiles must be checked out first.
echo ">>> Installing plugins from vim"
vim +'PlugInstall --sync' +qa

# Vim plugins, which includes YCM, must be downloaded first.
echo ">>> Installing YouCompleteMe plugin"
cd ~/.vim/plugged/YouCompleteMe
python3 install.py --all

echo "All done!"

