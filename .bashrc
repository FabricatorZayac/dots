# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

alias l="ls -l"
alias la="ls -lA"

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

GREEN="\[$(tput setaf 2)\]"
CYAN="\[$(tput setaf 6)\]"
RESET="\[$(tput sgr0)\]"
RED="\[$(tput setaf 1)\]"
YELLOW="\[$(tput setaf 3)\]"

PS1="${RED}\u${YELLOW}@${GREEN}\h${RESET}:${CYAN}\W${RESET}\$ "
