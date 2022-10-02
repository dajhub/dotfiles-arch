echo "###############################################"
echo '# Installing yay...'
echo "###############################################"
pacman -S --noconfirm --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

echo "###############################################"
echo '# Yay installed...'
echo "###############################################"

# ---

echo "###############################################"
echo '# Installing software...'
echo "###############################################"
yay -Syu --noconfirm 
yay -S --noconfirm \
    code \
    nerd-fonts-complete \
    htop \
    neofetch \
    pluma \
    npm \
    wget \
    papirus-icon-theme \
    librewolf-bin \
    gcolor2

echo "###############################################"
echo '# Software installed...'
echo "###############################################"

# ---
echo "###############################################"
echo '# Installing Everblush theme...'
echo "###############################################"

git clone https://github.com/Everblush/gtk
sudo npm install -g scss
cd \gtk
sudo make install

echo "###############################################"
echo '# Installing software for bspwm...'
echo "###############################################"

yay -S --noconfirm \
    bspwm \
    dmenu \
    picom \
    kitty \
    polybar \
    sxhkd \
    lxappearance \
    nitrogen
