#!/usr/bin/env bash

set -e

function link() {
  SRC="$PWD/$1"
  DST="$HOME/$2"
  echo "Linking $DST -> $SRC"
  ln -s -f "$SRC" "$DST"
}

export SYS_DIR=$(pwd);

# profiles
link common/bash_profile .bash_profile
link common/zshrc .zshrc
link common/vimrc .vimrc

# aliases and functions
link zsh/base-aliases.zsh .oh-my-zsh/custom/base-aliases.zsh
link zsh/cpp-aliases.zsh .oh-my-zsh/custom/cpp-aliases.zsh
link zsh/network-aliases.zsh .oh-my-zsh/custom/network-aliases.zsh
link zsh/git.zsh .oh-my-zsh/custom/git.zsh
link zsh/marks.zsh .oh-my-zsh/custom/marks.zsh

# theme
link zsh/themes/hand.zsh-theme .oh-my-zsh/custom/themes/hand.zsh-theme

# vscode
link code/settings.json Library/Application\ Support/Code/User/settings.json
link code/keybindings.json Library/Application\ Support/Code/User/keybindings.json

source ~/.bash_profile
