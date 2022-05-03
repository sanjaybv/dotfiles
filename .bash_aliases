alias reload='source $HOME/.bashrc'

alias cl='clear'

# sudo with PATH
alias sudop='sudo env "PATH=$PATH"'

# Fractional display scaling in Ubuntu
alias scale-display="gsettings set org.gnome.mutter experimental-features \"['x11-randr-fractional-scaling']\""
alias scale-display-stop='gsettings reset org.gnome.mutter experimental-features'

# Ubuntu copy and paste from clipboard
alias xc='xclip -sel clip'
alias xp='xclip -sel clip -o'

 # Git
alias git='hub'

alias gs='git status -sb'
alias gb='git branch'
alias gl='git log --date-order --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset" -n 10'
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gm='git co master && git fetch --prune && git pull origin master'

alias gc='git commit' 
alias gcm='git commit -m' 
alias gcam='git commit -a -m' 
alias gap='git add --patch' 
alias gp='git push origin HEAD'
alias gfp='git push origin HEAD --force'
alias gpr="git pull-request && git pr show"
alias gppr="git push origin HEAD && git pull-request && git pr show"

# dot is the alias for git when I'm working on dotfiles
alias dot='/usr/bin/git --git-dir=$HOME/.dot --work-tree=$HOME'

# Python3
alias p='python3'

