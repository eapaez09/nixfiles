{pkgs, ...}:
{
 
 # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    brave
    neovim
    fish
    git
    nodejs
    yarn
    exa
    bat
    xsel
    wget
    mpv
    neofetch
    htop
    btop
    gnome.file-roller
    unzip
    alacritty
    i3
    xfce.thunar
    xfce.thunar-archive-plugin
    xfce.thunar-volman
    udiskie
    udisks
    xorg.xinit
    themechanger
    polybar
    picom
    feh
    rofi
    brightnessctl
    networkmanagerapplet
    pavucontrol
    qtstyleplugin-kvantum-qt4
    blueman
    gnome.gnome-disk-utility
    ranger
    maim
    xdotool
    xclip
    rubyPackages.prettier
    xorg.xev
    polkit
    lxde.lxsession
    python3Full
    python310Packages.pip
    killall
    baobab
  ]; 

}
