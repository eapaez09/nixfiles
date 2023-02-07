if [[  $1 == "hp" ]]; then
        
        sudo rm /etc/nixos/configuration.nix
        sudo rm /etc//nixos/packages.nix
        sudo rm /etc/nixos/specific.nix
        #
        sudo cp ./nixos/configuration.nix /etc/nixos/
        sudo cp ./nixos/packages.nix /etc/nixos/
        sudo cp ./nixos/hpcw1068wm/specific.nix /etc/nixos/

elif [[  $1 == "asus" ]]; then

        sudo rm /etc/nixos/configuration.nix
        sudo rm /etc//nixos/packages.nix
        sudo rm /etc/nixos/specific.nix
        #
        sudo cp ./nixos/configuration.nix /etc/nixos/
        sudo cp ./nixos/packages.nix /etc/nixos/
        sudo cp ./nixos/asusc423/specific.nix /etc/nixos/

else
        echo "Please, don't forget to specify your pc"

fi
