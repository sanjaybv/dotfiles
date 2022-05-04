# created from https://www.atlassian.com/git/tutorials/dotfiles

# clone the repo
git clone --bare git@github:sanjaybv/dotfiles.git $HOME/.dot

# set the alias for the current shell
alias dot='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# checkout and backup if necessary.
dot checkout
if [ $? = 0 ]; then
	echo "checked out dot";
else
	echo "backing up existing dotfiles to .dot.backup";
	mkdir -p .dot.backup
	dot checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .dot.backup/{}
fi;
dot checkout

# no need to see untracked files
dot config status.showUntrackedFiles no
