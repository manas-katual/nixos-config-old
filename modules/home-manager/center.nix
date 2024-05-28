{
  imports = [

    # terminals
    #./terminals/alacritty.nix
    ./terminals/kitty.nix

    # cool
    ./git/git.nix
    #./themes/gtk-qt.nix
    ./themes/gruvbox.nix
    ./themes/cursor.nix
    ./htop/htop.nix
    ./shells/bash.nix
    ./lf/lf.nix
    #./mangohud/mangohud.nix
    ./mako/mako.nix
    ./nix-colors/nix-colors.nix
    ./zathura/zathura.nix
    ./vm/vm.nix
    ./emacs/emacs.nix
		./nur.nix

    # desktops
    ../desktops/hyprland/hyprland.nix
    ../desktops/hyprland/waybar.nix
    #../desktops/hyprland/waybar1.nix
    #../desktops/hyprland/waybar/waybar.nix
    ../desktops/hyprland/rofi.nix
    ../desktops/hyprland/hyprpaper.nix
    ../desktops/hyprland/wlogout.nix
    ../desktops/hyprland/hyprlock.nix
    ../desktops/hyprland/hypridle.nix
		

    # games
    ../games/proton.nix
  ];
}
