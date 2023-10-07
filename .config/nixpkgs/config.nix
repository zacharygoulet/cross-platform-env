{
  allowUnfree = true;

  packageOverrides = pkgs:{
    nerdfonts = pkgs.nerdfonts.override { fonts = [ "UbuntuMono" ]; };
  };
}