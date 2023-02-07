cd $HOME/Documents/nixfiles/
git pull

cd

if [[ $1 == "hp" ]]; then
    #
    # Specific Apps
    #
    # alacritty
    rm -R $HOME/Documents/nixfiles/dotconfig/1080p/alacritty/
    cp -R $HOME/.config/alacritty/ $HOME/Documents/nixfiles/dotconfig/1080p/

    # rofi
    rm -R $HOME/Documents/nixfiles/dotconfig/1080p/rofi/
    cp -R $HOME/.config/rofi/ $HOME/Documents/nixfiles/dotconfig/1080p/

    # polybar
    rm -R $HOME/Documents/nixfiles/dotconfig/1080p/polybar/
    cp -R $HOME/.config/polybar/ $HOME/Documents/nixfiles/dotconfig/1080p/

elif [[ $1 == "asus" ]]; then
    #
    # Specific Apps
    #
    # alacritty
    rm -R $HOME/Documents/nixfiles/dotconfig/768p/alacritty/
    cp -R $HOME/.config/alacritty/ $HOME/Documents/nixfiles/dotconfig/768p/

    # rofi
    rm -R $HOME/Documents/nixfiles/dotconfig/768p/rofi/
    cp -R $HOME/.config/rofi/ $HOME/Documents/nixfiles/dotconfig/768p/

    # polybar
    rm -R $HOME/Documents/nixfiles/dotconfig/768p/polybar/
    cp -R $HOME/.config/polybar/ $HOME/Documents/nixfiles/dotconfig/768p/

    # Nix OS audio fix - ASUS C423
    sudo rm $HOME/Documents/nixfiles/nixos/specificStuff/sound-fix.nix
    sudo cp /etc/nixos/sound-fix.nix $HOME/Documents/nixfiles/nixos/specificStuff/


else
    echo "Error, don't forget to specify the machine type"

fi

#
# Global Apps
#
# i3
rm -R $HOME/Documents/nixfiles/dotconfig/global/i3/
cp -R $HOME/.config/i3/ $HOME/Documents/nixfiles/dotconfig/global/
#
# picom
rm -R $HOME/Documents/nixfiles/dotconfig/global/picom/
cp -R $HOME/.config/picom/ $HOME/Documents/nixfiles/dotconfig/global/
#
# neofetch
rm -R $HOME/Documents/nixfiles/dotconfig/global/neofetch/
cp -R $HOME/.config/neofetch/ $HOME/Documents/nixfiles/dotconfig/global/
#
# fish
rm -R $HOME/Documents/nixfiles/dotconfig/global/fish/
cp -R $HOME/.config/fish/ $HOME/Documents/nixfiles/dotconfig/global/
#
# xinitrc
rm $HOME/Documents/nixfiles/dotconfig/global/.xinitrc
cp $HOME/.xinitrc $HOME/Documents/nixfiles/dotconfig/global/
#
# NixOS Stuff
sudo rm $HOME/Documents/nixfiles/nixos/configuration.nix
sudo rm $HOME/Documents/nixfiles/nixos/packages.nix
sudo cp /etc/nixos/configuration.nix $HOME/Documents/nixfiles/nixos/
sudo cp /etc/nixos/packages.nix $HOME/Documents/nixfiles/nixos/

cd $HOME/Documents/nixfiles/
git add -A
git commit -m "$2"
git push

cd
