[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# disk
alias df='df -h'     # human-readable sizes
alias free='free -m' # show sizes in MB

# get top process eating memory
alias psmem='ps auxf | sort -nr -k 4 | head -5'

# get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3 | head -5'

# For when keys break
alias archlinx-fix-keys='sudo pacman-key --init && sudo pacman-key --populate archlinux && sudo pacman-key --refresh-keys'

# Configure
 
PS1='[\W] -> '
PS2='-> '

export MANPAGER='nvim +Man!'
export MANWIDTH='999'
