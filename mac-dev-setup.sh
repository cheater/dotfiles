#!/bin/bash

# Initial setup

cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null
scriptdir="$(pwd)" # The directory this script is located in
mkdir -p ~/.config
link () {
  ln -s "$(realpath $1)" $2
  }




# Get pmset-session

if ! [ -d ~/projects/pmset-session ]; then
  echo "Cloning pmset-session..."
  mkdir -p ~/projects
  cd ~/projects
  git clone https://github.com/cheater/pmset-session.git # can't use git@github.com:cheater/pmset-session.git because no ssh key installed
  fi
cd "$scriptdir"
mkdir -p ~/bin
link ~/projects/pmset-session/pmset-session ~/bin/pmset-session




# zsh

link dotzshenv   ~/.zshenv
link dotzprofile ~/.zprofile
link dotzshrc    ~/.zshrc




# Bash




# Git

link dotgitconfig ~/.gitconfig




# Save the fact that the dotfiles have been installed

touch ~/.config/.dotfiles_installed
