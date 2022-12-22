#!/bin/bash
#set -e
##################################################################################################################
# Author    : Erik Dubois
# Website   : https://www.erikdubois.be
# Website   : https://www.alci.online
# Website   : https://www.ariser.eu
# Website   : https://www.arcolinux.info
# Website   : https://www.arcolinux.com
# Website   : https://www.arcolinuxd.com
# Website   : https://www.arcolinuxb.com
# Website   : https://www.arcolinuxiso.com
# Website   : https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
#tput setaf 0 = black
#tput setaf 1 = red
#tput setaf 2 = green
#tput setaf 3 = yellow
#tput setaf 4 = dark blue
#tput setaf 5 = purple
#tput setaf 6 = cyan
#tput setaf 7 = gray
#tput setaf 8 = light blue
##################################################################################################################

func_install() {
    if pacman -Qi $1 &> /dev/null; then
        tput setaf 2
        echo "###############################################################################"
        echo "################## The package "$1" is already installed"
        echo "###############################################################################"
        echo
        tput sgr0
    else
        tput setaf 3
        echo "###############################################################################"
        echo "##################  Installing package "  $1
        echo "###############################################################################"
        echo
        tput sgr0
        sudo pacman -S --noconfirm --needed $1
    fi
}

echo
tput setaf 2
echo "################################################################"
echo "################### Install chadwm"
echo "################################################################"
tput sgr0
echo


list=(
alacritty
archlinux-logout-git
arcolinux-chadwm-git
arcolinux-local-xfce4-git
arcolinux-paleofetch-git
arcolinux-rofi-git
arcolinux-rofi-themes-git
arcolinux-root-git
arcolinux-volumeicon-git
arcolinux-wallpapers-candy-git
arcolinux-wallpapers-git
arcolinux-xfce-git
autorandr
dash
dmenu
eww
feh
gvfs
lolcat
lxappearance
picom
polkit-gnome
rofi
rxvt-unicode
sxhkd
thunar
thunar-archive-plugin
thunar-volman
ttf-hack
volumeicon
xfce4-notifyd
xfce4-power-manager
xfce4-screenshooter
xfce4-settings
xfce4-taskmanager
xfce4-terminal
)

count=0

for name in "${list[@]}" ; do
    count=$[count+1]
    tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
    func_install $name
done

# when on Leftwm

if [ -f /usr/share/xsessions/leftwm.desktop ]; then

  echo
  tput setaf 2
  echo "################################################################"
  echo "################### Leftwm related applications"
  echo "################################################################"
  tput sgr0
  echo


  #sh ~/.config/leftwm/scripts/install-all-arcolinux-themes.sh
  #sh ~/.config/leftwm/scripts/install-all-arcolinux-community-themes.sh

  #leftwm-theme update
  #leftwm-theme apply db-nemesis

fi

echo
tput setaf 2
echo "################################################################"
echo "################### Done"
echo "################################################################"
tput sgr0
echo
