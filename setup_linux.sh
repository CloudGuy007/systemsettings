#!/usr/bin/env bash

set -e

function link() {
  SRC="$PWD/$1"
  DST="$HOME/$2"
  echo "Linking $DST -> $SRC"
  ln -s -f "$SRC" "$DST"
}

# mkdir -p code/server

# link common/serve.sh       code/server/serve.sh
# something about making .oh_my_zsh/custom/themes if it isn't there
link common/bash_profile .bash_profile
link common/zshrc .zshrc
link zsh/base-aliases.zsh .oh-my-zsh/custom/base-aliases.zsh
link zsh/git.zsh .oh-my-zsh/custom/git.zsh
link zsh/marks.zsh .oh-my-zsh/custom/marks.zsh
link zsh/themes/hand.zsh-theme .oh-my-zsh/custom/themes/hand.zsh-theme
link zsh/rpi-aliases.zsh .oh-my-zsh/custom/rpi-aliases.zsh

source ~/.bash_profile