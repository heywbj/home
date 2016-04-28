TZ='America/New_York'; export TZ

export PROJECT_HOME=$HOME/projects
export EDITOR=/usr/bin/vim
export PATH=$PATH:./node_modules/.bin
source `which virtualenvwrapper.sh`
 
alias ls='ls -F --color'
alias less='less -Ri'
alias tree='tree -C'
alias grep='grep --color=always'
alias ack='ack --color'
alias ack-grep='ack-grep --color'
alias open='xdg-open'
