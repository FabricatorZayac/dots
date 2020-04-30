export TERM="xterm-256color"
export PATH_TO_FX=path/to/javafx-sdk-14/lib
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

# <<<<<<< HEAD
alias l="ls -l"
alias la="ls -lA"

# =======
# >>>>>>> 8ed4033
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/zayac/.zshrc'

autoload -Uz compinit
compinit

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#alias batcat='cat /sys/class/power_supply/BAT0/capacity'

#setfont Cyr_a8x16
#sudo loadkeys ru

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# <<<<<<< HEAD
# =======

# >>>>>>> 8ed4033
source ~/gitpackages/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
