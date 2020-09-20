export PS1='`if [ \$? = 0 ]; then echo \[\e[33m\]👍🏻\[\e[0m\]; else echo \[\e[31m\]👎🏻\[\e[0m\]; fi`\[\033[1;32m\]\u\[\033[00m\]@\[\033[1;33m\]\h\[\033[00m\]:\[\033[1;34m\]\w\[\033[1;31m\]$(__git_ps1)\[\033[00m\] \$ '

HISTCONTROL=ignoreboth
HISTSIZE=9999
HISTFILESIZE=9999

source ~/.wsl2_bash_profile/git-prompt.sh
source ~/.wsl2_bash_profile/git-completion.sh

bind '"\C-n": history-search-forward'
bind '"\C-p": history-search-backward'

eval `ssh-agent`
ssh-add ~/.ssh/id_rsa

case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi

# Go Settings
export PATH=$PATH:/usr/local/go/bin
