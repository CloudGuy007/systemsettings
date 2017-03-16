#!/usr/bin/env bash

set -e

function link() {
  SRC="$PWD/$1"
  DST="$HOME/$2"
  echo "Linking $DST -> $SRC"
  ln -s -f "$SRC" "$DST"
}

# something about making .oh_my_zsh/custom/themes if it isn't there
link common/bash_profile .bash_profile
link common/zshrc .zshrc
link common/vimrc .vimrc

link zsh/base-aliases.zsh .oh-my-zsh/custom/base-aliases.zsh
link zsh/ubuntu-aliases.zsh .oh-my-zsh/custom/ubuntu-aliases.zsh
link zsh/git.zsh .oh-my-zsh/custom/git.zsh
link zsh/marks.zsh .oh-my-zsh/custom/marks.zsh
link zsh/network-aliases.zsh .oh-my-zsh/custom/network-aliases.zsh

link zsh/themes/hand.zsh-theme .oh-my-zsh/custom/themes/hand.zsh-theme
link code/settings.json .config/Code/User/settings.json
link code/keybindings-ubuntu.json .config/Code/User/keybindings.json

source ~/.bash_profile
