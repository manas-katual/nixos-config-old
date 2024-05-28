{ inputs, ... }:

{

  imports = [
    #inputs.stylix.homeManagerModules.stylix
    #./zsh.nix
    ../../modules/home-manager/center.nix
  ];

  home = {
    username = "manas";
    homeDirectory = "/home/manas";
    stateVersion = "23.11";
  };
}
