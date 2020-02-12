#!/usr/bin/env bash

#ohmyzsh customized install script. 

#take me home, country roads
cd ~

#install basic dependencies
echo "installing basic dependencies"
sudo yum install -y zsh git curl util-linux-user nano exa

#install ohmyzsh
echo "copying .oh-my-zsh file" 
cp -r ~/zshsetup/.oh-my-zsh ~/.oh-my-zsh

#install powerlevel9k
echo "cloning theme Powerlevel9k"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

#install personal preferredd plugins
echo "grabbing my favorite plugins"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#back up .zshrc
echo "if .zshrc exists back it up!"
cp ~/.zshrc ~/.zshrc.orig

#bring in personal louadout
echo "bring in preferred config"
cp ~/zshsetup/.zshrc ~/.zshrc

#clone nerdfonts repo... This will take a while, it's a big repo, and seeds slowly.
#echo "getting nerdfonts, this grabs all because I'm lazy, just wait for it."
#git clone https://github.com/ryanoasis/nerd-fonts

#run install script for nerd fonts
echo "installing nerdfonts"
./nerd-fonts/install.sh

#make zsh default shell
echo "making zsh default shell"
chsh -s /bin/zsh

#reload .zshrc
echo "reload .zshrc"
. ~/.zshrc

zsh

#now you need to go change the font in preferences in the terminal GUI. I haven't found ou where to change it in the terminal yet.
