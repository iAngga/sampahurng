#!/bin/zsh

# default program
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox"

# ~/ biar bersih
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export KODI_DATA="$XDG_DATA_HOME/kodi"
export FCEUX_HOME="$XDG_CONFIG_HOME/fceux"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"

# bin
export PATH="$HOME/.local/bin:$PATH"
