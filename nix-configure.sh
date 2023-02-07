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
    #
    sudo cp $HOME/Documents/nixfiles/nixos/configuration.nix /etc/nixos/
    sudo cp $HOME/Documents/nixfiles/nixos/packages.nix /etc/nixos/
    #
    # specific for HP cw - 1068wm
    sudo rm /etc/nixos/specific.nix
    sudo cp $HOME/Documents/nixfiles/nixos/hpcw1068wm/specific.nix /etc/nixos/

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
    # 
    sudo cp $HOME/Documents/nixfiles/nixos/configuration.nix /etc/nixos/
    sudo cp $HOME/Documents/nixfiles/nixos/packages.nix /etc/nixos/
    #
    # specific for ASUS C423
    sudo rm /etc/nixos/specific.nix
    sudo cp $HOME/Documents/nixfiles/nixos/asusc423/specific.nix /etc/nixos/


else
    echo "Please, don't forget to specify your pc"
    echo "hp = 1920x1080"
    echo "asus = 1366x768"

fi
