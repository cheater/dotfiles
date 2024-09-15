#!/bin/bash

scriptdir="$(pwd)" # The dir of this script. You have to launch the script from its directory.




# zsh

ln -s dotzshrc ~/.zshrc
ln -s dotzprofile ~/.zprofile




# Bash




# Git

ln -s ~/.gitconfig dotgitconfig




# Save the fact that the dotfiles have been installed

mkdir -p ~/.config
touch ~/.config/.dotfiles_installed
