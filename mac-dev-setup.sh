#!/bin/bash

scriptdir="$(pwd)" # The dir of this script. You have to launch the script from its directory.




# zsh

cp -v dotzshrc ~/.zshrc
cp -v dotzprofile ~/.zprofile




# Bash




# Save the fact that the dotfiles have been installed

mkdir -p ~/.config
touch ~/.config/.dotfiles_installed
