- This is easier than Windows installation
- Install Neovim and git (obviously)

- Make sure you have installed xsel, exa, and bat. For Arch:
```
sudo pacman -S xsel exa bat
```
- Now, copy all the content of this folder to $HOME/.config/nvim (Create nvim folder if it does not exist).
- Install nodejs (LTS: check the available packages) and yarn:
```
sudo pacman -S yarn
```
- Install [Vim-Plug](https://github.com/junegunn/vim-plug), the version for Neovim in Linux
- Go inside Neovim and make a :PlugInstall
