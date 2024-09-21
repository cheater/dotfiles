#!/bin/bash

# Initial setup

cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null
scriptdir="$(pwd)" # The directory this script is located in
mkdir -p ~/.config
link () {
  ln -s "$(realpath $1)" $2
  }




# zsh

link dotzprofile ~/.zprofile
link dotzshrc    ~/.zshrc




# Bash




# Git

link dotgitconfig ~/.gitconfig




# Save the fact that the dotfiles have been installed

touch ~/.config/.dotfiles_installed
