# Install Scoop
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex

# Install Packages
scoop bucket add nerd-fonts
scoop install alacritty nushell starship nerd-fonts/UbuntuMono-NF

# Copy Config Files
mkdir $env:APPDATA/alacritty
cp alacritty.yml $env:APPDATA/alacritty