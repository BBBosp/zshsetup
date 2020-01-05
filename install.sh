#!/usr/bin/env bash

#ohmyzsh customized install script. 

#take me home, country roads
cd ~

#install basic dependencies
sudo yum install -y zsh git curl util-linux-user

#install ohmyzsh
cp -r ~/zshsetup/.oh-my-zsh ~/.oh-my-zsh

#install powerlevel9k
#git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

#install personal preferredd plugins
#git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
#git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#back up .zshrc
cp ~/.zshrc ~/.zshrc.orig

#bring in personal louadout
cp ~/zshsetup/.zshrc ~/.zshrc

#clone nerdfonts repo... This will take a while, it's a big repo, and seeds slowly. 
git clone https://github.com/ryanoasis/nerd-fonts

#run install script for nerd fonts
./nerd-fonts/install.sh

#make zsh default shell
chsh -s /bin/zsh

#reload .zshrc
. ~/.zshrc



#now you need to go change the font in preferences in the terminal GUI. I haven't found ou where to change it in the terminal yet.