#!/usr/bin/env bash


# Package Sync & Init Installation
sudo pacman -Syyu --noconfirm
# Desktop Env
sudo pacman -S --noconfirm --needed git bspwm sxhkd polybar picom nitrogen kitty lightdm lightdm-gtk-greeter dmenu ttf-font-awesome
# Misc Tools
sudo pacman -S --noconfirm --needed nano btop neovim vim htop tree neofetch cmatrix python python-pip python-pywal pulseaudio-bluetooth sof-firmware thunar discord s-tui


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

# Systemd Symlinks & priviliges
read -p "[Username]: " username
sudo systemctl enable lightdm.service
sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service
sudo usermod -a -G video $username
sudo echo "ACTION=="add", SUBSYSTEM=="backlight", RUN+="/bin/chgrp video $sys$devpath/brightness", RUN+="/bin/chmod g+w $sys$devpath/brightness"" >> /etc/udev/rules.d/backlight.rules

# YAY
sudo pacman -S --needed --noconfirm git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si


#YAY stuff
yay -S spotify nerd-fonts-complete --needed --noconfirm
sudo fc-cache -fv

