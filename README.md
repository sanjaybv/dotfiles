# Installation Steps

* [base16](https://github.com/chriskempson/base16-shell)

* Install tmux
* [tmux plugin manager](https://github.com/tmux-plugins/tpm)
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

* Install vim
Install vim with python3 and clipboard support.
Just using `brew install vim` should be fine.

* [vim plug](https://github.com/junegunn/vim-plug)
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

* [vim ycm plugin](https://github.com/ycm-core/YouCompleteMe)
```
brew install cmake python go nodejs
cd ~/.vim/plugged/YouCompleteMe
python3 install.py --all
```
