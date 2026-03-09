# colours and prompt

if [[ $XDG_SESSION_TYPE == 'tty' ]] ; then
  export TERM="xterm-256color"
	tmux a -tTmuxtty || tmux new -sTmuxtty && exit
fi

# ble.sh
[[ $- == *i* ]] && source ~/aurGit/ble.sh/out/ble.sh

# same bashrc prompt for root and user

if [[ "$(whoami)" == "root" ]]; then
  RESET="\[$(tput sgr0)\]"
  RED="\[$(tput setaf 1)\]"
  BLUE="\[$(tput setaf 6)\]"
  PS1="${RED}\u${BLUE}@${RED}\h${BLUE} • ${RED}\w\n ${RED}\$ ${RESET}"
else
  PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " (%s)")'; PS1='\[\e[38;5;218m\]\u\[\e[38;5;51m\]@\[\e[38;5;218m\]\h\[\e[0m\] \[\e[38;5;51m\]•\[\e[0m\] \[\e[38;5;218m\]\w\[\e[38;5;120m\]${PS1_CMD1}\n\[\e[0m\] \[\e[91m\]\$\[\e[0m\] '
fi

# cosmetic

fastfetch; echo; # ls -A; 

# sources
. ~/.git-prompt.sh
. ~/.aliases

# adding ssh keys to ssh-agent and setting SSH_AUTH_SOCK
if [ -z "$SSH_AUTH_SOCK" ] ; then
  eval "$(ssh-agent -t 8h)" > /tmp/ssh-agent.pid
  ssh-add ~/.ssh/artsKey &> /dev/null
else
  ssh-add ~/.ssh/artsKey &> /dev/null
fi

set -o vi
bind -m vi-insert '"\C-c": "\C-u"'
bind -m vi-command '"\C-c": "\C-u"'

eval "$(zoxide init bash)"
eval "$(direnv hook bash)"
eval "$(register-python-argcomplete gcalcli)"

export EDITOR=vim
export TERMINAL=ghostty
# export TERMCMD="ghostty --confirm-close-surface=false"

