#colours and prompt

if [[ $XDG_SESSION_TYPE == 'tty' ]] ; then
	tmux a -t$USER || tmux new -s$USER && exit
fi

[[ $- == *i* ]] && source ~/.local/share/blesh/ble.sh

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

/bin/clear
fastfetch

# aliases
. ~/.git-prompt.sh
source /home/arts/.aliases

colour() {
	perl -e 'foreach $a(@ARGV){print "\e[48:2::".join(":",unpack("C*",pack("H*",$a)))."m \e[49m "};print "\n"' "$@"

}

# adding ssh keys to ssh-agent and setting SSH_AUTH_SOCK
if [ -z "$SSH_AUTH_SOCK" ] ; then
  export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR"/ssh-agent.socket
	ssh-add ~/.ssh/artsKey &> /dev/null
fi

