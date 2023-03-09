{pkgs, ...}:
{
 
 # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
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
    feh
    ranger
    rubyPackages.prettier
    xorg.xev
    python3Full
    python310Packages.pip
    killall
  ]; 

}
