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

#nemesis-repo added to /etc/pacman.conf

if grep -q nemesis_repo /etc/pacman.conf; then

  echo
  tput setaf 2
  echo "################################################################"
  echo "################### nemesis_repo is already in /etc/pacman.conf"
  echo "################################################################"
  tput sgr0
  echo  

else

echo '

[nemesis_repo]
SigLevel = Optional TrustedOnly
Server = https://erikdubois.github.io/$repo/$arch' | sudo tee -a /etc/pacman.conf
fi

sudo pacman -Sy

echo
tput setaf 2
echo "################################################################"
echo "################### Installing software from nemesis_repo"
echo "################################################################"
tput sgr0
echo  

sudo pacman -S --noconfirm --needed edu-candy-beauty-arc-git
sudo pacman -S --noconfirm --needed edu-candy-beauty-arc-mint-grey-git
sudo pacman -S --noconfirm --needed edu-candy-beauty-arc-mint-red-git
sudo pacman -S --noconfirm --needed edu-candy-beauty-tela-git
sudo pacman -S --noconfirm --needed edu-papirus-dark-tela-git
sudo pacman -S --noconfirm --needed edu-papirus-dark-tela-grey-git
sudo pacman -S --noconfirm --needed edu-skel-git
#sudo pacman -S --noconfirm --needed edu-vimix-dark-tela-git