#!/usr/bin/env bash


# Package Sync & Init Installation
pacman -Syyu --noconfirm
# Desktop Env
pacman -S --noconfirm --needed git bspwm sxhkd polybar picom nitrogen kitty lightdm lightdm-gtk-greeter dmenu ttf-font-awesome
# Misc Tools
pacman -S --noconfirm --needed nano btop neovim vim htop tree neofetch cmatrix python python-pip python-pywal pulseaudio-bluetooth thunar discord s-tui
#!/usr/bin/env bash

#dot files
mkdir /home/$USER/Downloads
mkdir /home/$USER/.config
cd /home/$USER/Downloads
git clone https://github.com/gentoolman/bspwm-rice-stuff
cd
mv -rf Downloads/bspwm-rice-stuff/.bashrc /home/$USER/
mv -rf Downloads/bspwm-rice-stuff/.Xresources 
mv -rf Downloads/bspwm-rice-stuff/* /home/$USER/.config

chmod +x .config/bspwm/bspwmrc
chmod +x .config/bspwm/pywal.sh
chmod +x .config/polybar/launch.sh

# Systemd Symlinks
sudo systemctl enable lightdm.service
sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service

# YAY
sudo pacman -S --needed --noconfirm git base-devel && git clone https://aur.archl>

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

#curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-cli/master/inst>
#curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-marketplace/mai>
