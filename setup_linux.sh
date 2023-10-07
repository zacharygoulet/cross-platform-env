# !/bin/bash

# install nix (run this manually and restart shell)
# curl -L https://nixos.org/nix/install | sh -s -- --daemon

# install packages
# nix profile install nixpkgs#alacritty (not working on wayland, using default terminal instead)
nix profile install nixpkgs#nushell
nix profile install nixpkgs#starship
nix profile install nixpkgs#helix
nix profile install nixpkgs#nil # nix langage server
nix profile install nixpkgs#nerdfonts # nerd fonts
nix profile install nixpkgs#obsidian --impure # markdown editor
nix profile install nixpkgs#ltex-ls # autocorrect language server

# Link nix apps to ubuntu folder
mkdir -p ~/.local/share/icons/hicolor/scalable/apps
ln -s ~/.nix-profile/share/applications/* ~/.local/share/applications/
ln -s ~/.nix-profile/share/icons/hicolor/256x256/apps/* ~/.local/share/icons/hicolor/scalable/apps/

cp -r .config/* ~/.config/ 

echo "rebooting in 5 seconds... Ctrl-c to cancel the reboot"
sleep 5
reboot

echo done!