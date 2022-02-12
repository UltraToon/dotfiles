[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias df='df -h'     # human-readable sizes
alias free='free -m' # show sizes in MB

# get top process eating memory
alias psmem='ps auxf | sort -nr -k 4 | head -5'

# get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3 | head -5'

# For when keys break
alias archlinx-fix-keys='sudo pacman-key --init && sudo pacman-key --populate archlinux && sudo pacman-key --refresh-keys'

# Configure
#\d - the current date
#\e - escape character
#\h - the hostname
#\n - a newline
#\t - current time 24-hour HH:MM:SS
#\T - 12-hour HH:MM:SS
#\@ - 12-hour HH:MM am/pm
#\u - username of current user
#\w - path to current working directory
bold=$(tput bold)
PS1='\[\e[31m\]$bold[\W]\[\e[34m\] \@ \n\[\e[32m\]-> '
PS2='-> '

export MANPAGER='nvim +Man!'
export MANWIDTH='999'
export XDG_CONFIG_HOME=$HOME/.config
