cd $HOME/Documents/nixfiles
git pull

cd
if [[  $1 == "hp" ]]; then

    # dotfiles stuff
    rm -R $HOME/.config/alacritty/ $HOME/.config/polybar/ $HOME/.config/rofi/
    rm -R $HOME/.config/fish/ $HOME/.config/i3/ $HOME/.config/neofetch $HOME/.config/picom/
    rm $HOME/.xinitrc

    cp -R $HOME/Documents/nixfiles/dotconfig/1080p/* $HOME/.config/
    cp -R $HOME/Documents/nixfiles/dotconfig/global/fish/ $HOME/.config/
    cp -R $HOME/Documents/nixfiles/dotconfig/global/i3/ $HOME/.config/
    cp -R $HOME/Documents/nixfiles/dotconfig/global/neofetch/ $HOME/.config/
    cp -R $HOME/Documents/nixfiles/dotconfig/global/picom/ $HOME/.config/
    cp $HOME/Documents/nixfiles/dotconfig/global/.xinitrc $HOME/

    # nix os settings
    sudo rm /etc/nixos/configuration.nix
    sudo rm /etc//nixos/packages.nix

    sudo cp $HOME/Documents/nixfiles/nixos/configuration.nix /etc/nixos/
    sudo cp $HOME/Documents/nixfiles/nixos/packages.nix /etc/nixos/

elif [[  $1 == "asus" ]]; then

    # dotfiles stuff
    rm -R $HOME/.config/alacritty/ $HOME/.config/polybar/ $HOME/.config/rofi/
    rm -R $HOME/.config/fish/ $HOME/.config/i3/ $HOME/.config/neofetch $HOME/.config/picom/
    rm $HOME/.xinitrc

    cp -R $HOME/Documents/nixfiles/dotconfig/768p/* $HOME/.config/
    cp -R $HOME/Documents/nixfiles/dotconfig/global/fish/ $HOME/.config/
    cp -R $HOME/Documents/nixfiles/dotconfig/global/i3/ $HOME/.config/
    cp -R $HOME/Documents/nixfiles/dotconfig/global/neofetch/ $HOME/.config/
    cp -R $HOME/Documents/nixfiles/dotconfig/global/picom/ $HOME/.config/
    cp $HOME/Documents/nixfiles/dotconfig/global/.xinitrc $HOME/

    # nix os settings
    sudo rm /etc/nixos/configuration.nix
    sudo rm /etc//nixos/packages.nix

    sudo cp $HOME/Documents/nixfiles/nixos/configuration.nix /etc/nixos/
    sudo cp $HOME/Documents/nixfiles/nixos/packages.nix /etc/nixos/

else
    echo "Please, don't forget to specify you hostname"
    echo "hp = 1920x1080"
    echo "asus = 1366x768"

fi
