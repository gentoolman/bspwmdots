#!/usr/bin/env bash


# Package Sync & Init Installation
sudo pacman -Syyu --noconfirm
# Desktop Env
sudo pacman -S --noconfirm --needed git bspwm sxhkd polybar picom nitrogen kitty lightdm lightdm-gtk-greeter dmenu xorg-server xorg-apps xorg xf86-video-intel xf86-video-nouveau

# Misc Tools
sudo pacman -S --noconfirm --needed ttf-font-awesome nano btop neovim vim htop tree neofetch cmatrix python python-pip python-pywal pulseaudio-bluetooth thunar discord s-tui stress sof-firmware

#dot files
mkdir /home/$USER/Downloads
cd /home/$USER/Downloads
git clone https://github.com/gentoolman/bspwmdots
cd
cp -rf Downloads/bspwmdots/.config /home/$USER/
cp -rf Downloads/bspwmdots/.bashrc /home/$USER/

chmod +x .config/bspwm/bspwmrc
chmod +x .config/bspwm/pywal.sh
chmod +x .config/polybar/launch.sh

# Systemd Symlinks
sudo systemctl enable lightdm.service
sudo systemctl enable bluetooth.service
mkdir ~/.config/polybar/
sudo systemctl start bluetooth.service

# YAY 
sudo pacman -S --needed --noconfirm git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

#YAY stuff
yay -S nerd-fonts-complete --needed --noconfirm
#yay -S --noconfirm spotify 
#spicetify-cli

#Aliases
echo "alias pacman='sudo pacman' 
alias grep='grep --color=auto' 
alias ip='ip -c' 
alias ll='ls -l' 
alias la='ls -la' 
alias lsa='ls -lsa'" >> /home/$USER/.bashrc

#curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.sh | sh
#curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.sh | sh

