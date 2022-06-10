# color
autoload -U colors && colors
PS1=" %B%{$fg[cyan]%}%{$fg[cyan]%}%M %{$fg[magenta]%}%~%{$reset_color%}%b "

# completion
autoload -U compinit
zstyle ':completion:*' menu select matcher-list 'm:{a-z}={A-Z}'
zmodload zsh/complist
compinit
_comp_options+=(globdots)	

# history
HISTFILE=~/.cache/zsh/.histfile
HISTSIZE=10000
SAVEHIST=10000

# vi mode
bindkey -v
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# export
source $XDG_CONFIG_HOME/zsh/aliases
