#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

GREEN="\[$(tput setaf 2)\]"
CYAN="\[$(tput setaf 6)\]"
RESET="\[$(tput sgr0)\]"
RED="\[$(tput setaf 1)\]"
YELLOW="\[$(tput setaf 3)\]"

PS1="${RED}\u${YELLOW}@${GREEN}\h${RESET}:${CYAN}\W${RESET}\$ "
