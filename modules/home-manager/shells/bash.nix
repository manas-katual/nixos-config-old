{ pkgs, ... }:
{
  
  programs = {
    bash = {
      enable = true;
      enableCompletion = true;
      shellAliases = {
        fucking-flake-rb = "sudo nixos-rebuild switch --flake ~/setup/";
        ls = "eza --icons";
        tree = "eza --tree --icons";
      };
    };
    oh-my-posh = {
      enable = true;
      useTheme = "gruvbox";
      enableBashIntegration = true;
      package = pkgs.oh-my-posh; 
    };
    bash.bashrcExtra = ''
      eval "$(oh-my-posh init bash)"
    '';
  };
}
