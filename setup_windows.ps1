# Install Scoop
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex

# Install Packages
scoop install alacritty nushell starship

# Copy Config Files
