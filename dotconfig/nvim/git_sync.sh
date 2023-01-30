#! /usr/bin/sh

cd $HOME/Documents/configNeovim_lua
git pull

cp $HOME/.config/nvim/init.lua $HOME/Documents/configNeovim_lua/Linux/
cp -R $HOME/.config/nvim/lua/ $HOME/Documents/configNeovim_lua/Linux/
cp $HOME/.config/nvim/git_sync.sh $HOME/Documents/configNeovim_lua/Linux/

git add --all
git commit -m "Update for Linux"
git push
