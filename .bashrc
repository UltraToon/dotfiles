# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt
PS1=' \W ❯❯❯ '
PS2='❯❯❯ '

# Aliases
alias ls='lsd -a'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias df='df -h'     # human-readable sizes
alias free='free -m' # show sizes in MB
alias psmem='ps auxf | sort -nr -k 4 | head -5' # Top process for memory
alias pscpu='ps auxf | sort -nr -k 3 | head -5' # Top process for cpu
alias mic='noisetorch -i && pulsemixer'

# Exports
export MANPAGER='nvim +Man!'
export MANWIDTH='999'
export XDG_CONFIG_HOME=$HOME/.config
export EDITOR=nvim
export PATH="$HOME/.local/bin:$PATH"

# Doas support
complete -cf doas
