#!/bin/zsh

# Default Program
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox"

# ~/ Biar bersih
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export KODI_DATA="$XDG_DATA_HOME/kodi"
export FCEUX_HOME="$XDG_CONFIG_HOME/fceux"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export GOPATH="$XDG_DATA_HOME/go"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export LESSHISTFILE="-"

# bin
export PATH="$HOME/.local/bin:$PATH"
. "$XDG_DATA_HOME/cargo/env"
