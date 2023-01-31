cd $HOME/Documents/nixfiles/
git pull

cd

# SPECIFIC APPS
# alacritty
rm -R $HOME/Documents/nixfiles/dotconfig/1080p/alacritty/
cp -R $HOME/.config/alacritty/ $HOME/Documents/nixfiles/dotconfig/1080p/

# i3
rm -R $HOME/Documents/nixfiles/dotconfig/1080p/i3/
cp -R $HOME/.config/i3/ $HOME/Documents/nixfiles/dotconfig/1080p/

# rofi
rm -R $HOME/Documents/nixfiles/dotconfig/1080p/rofi/
cp -R $HOME/.config/rofi/ $HOME/Documents/nixfiles/dotconfig/1080p/

# GLOBAL APPS
# picom
rm -R $HOME/Documents/nixfiles/dotconfig/global/picom/
cp -R $HOME/.config/picom/ $HOME/Documents/nixfiles/dotconfig/global/

# fish
rm -R $HOME/Documents/nixfiles/dotconfig/global/fish/
cp -R $HOME/.config/fish/ $HOME/Documents/nixfiles/dotconfig/global/

cd $HOME/Documents/nixfiles/
git add -A
git commit -m "NixOS update"
git push

cd
