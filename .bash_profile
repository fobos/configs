# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
a
# Git alias
alias gti='git'

alias diskspace_report="df -P -kHl"
# File size
alias fs="stat -f \"%z bytes\""

if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
  source `brew --prefix`/etc/bash_completion.d/git-prompt.sh
fi

if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  source `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="verbose"
GIT_PS1_SHOWCOLORHINTS=1
#export PS1='[\u@\h:\w$(__git_ps1 " (%s)")]\$ '
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;33m\]$(__git_ps1 " (%s)")\[\033[00m\]\$ '

// Load nvm
export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh

# .fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
