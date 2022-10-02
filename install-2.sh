echo "###############################################"
echo "# Creating private folders for later use"
echo "###############################################"

set -e

[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"
[ -d $HOME"/Documents" ] || mkdir -p $HOME"/Documents"
[ -d $HOME"/Pictures/wallpapers" ] || mkdir -p $HOME"/Pictures/wallpapers"
[ -d $HOME"/.themes" ] || mkdir -p $HOME"/.themes"
[ -d $HOME"/.local/share/fonts" ] || mkdir -p $HOME"/.local/share/fonts"
[ -d $HOME"/.config/gtk-3.0" ] || mkdir -p $HOME"/.config/gtk-3.0"
[ -d $HOME"/.config/kitty" ] || mkdir -p $HOME"/.config/kitty"
[ -d $HOME"/.config/rofi" ] || mkdir -p $HOME"/.config/rofi"
[ -d $HOME"/.config/xfce4/terminal" ] || mkdir -p $HOME"/.config/xfce4/terminal"


echo "###############################################"
echo "# Personal folders created or existed already"
echo "###############################################"

# ---

echo "###############################################"
echo "# Copy fonts to .local/share/fonts/"
echo "###############################################"

cp -R ~/dotfiles-arch/.local/share/fonts/* ~/.local/share/fonts/

fc-cache -fv ~/.local/share/fonts/

echo "############################################"
echo "# Fonts have been copied and refreshed       "
echo "############################################"

# ---