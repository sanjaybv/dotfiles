alias reload='source $HOME/.bashrc'

# sudo with PATH
alias sudop='sudo env "PATH=$PATH"'

# Fractional display scaling in Ubuntu
alias scale-display="gsettings set org.gnome.mutter experimental-features \"['x11-randr-fractional-scaling']\""
alias scale-display-stop='gsettings reset org.gnome.mutter experimental-features'

 # Git
alias gs='git status -sb'
alias gb='git branch'
alias gl='git log --oneline -n 10'
alias gp='git push origin HEAD'
alias gfp='git push origin HEAD --force'
alias gc='git commit' 
alias gcm='git commit -m' 
alias gcam='git commit -a -m' 
alias gap='git add --patch' 
alias gco='git checkout' 
alias gcob='git checkout -b' 
alias gm='git co master && git fetch --prune && git pull origin master'
alias git='hub'

# dot is the alias for git when I'm working on dotfiles
alias dot='/usr/bin/git --git-dir=$HOME/.dot --work-tree=$HOME'

# Python3
alias p='python3'

