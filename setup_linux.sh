# !/bin/bash

# install nix (run this manually and restart shell)
# curl -L https://nixos.org/nix/install | sh -s -- --daemon

# install packages
nix profile install nixpkgs#alacritty
nix profile install nixpkgs#nu
nix profile install nixpkgs#starship
nix profile install nixpkgs#helix

# Link nix apps to ubuntu folder
mkdir -p ~/.local/share/icons/hicolor/scalable/apps
ln -s ~/.nix-profile/share/applications/* ~/.local/share/applications/
ln -s ~/.nix-profile/share/icons/hicolor/256x256/apps/* ~/.local/share/icons/hicolor/scalable/apps/

cp -r .config/* ~/.config/ 

echo "rebooting in 5 seconds... Ctrl-c to cancel the reboot"
sleep 5
reboot

echo done!