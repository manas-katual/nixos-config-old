{ pkgs, ... }: 
{
  nixpkgs.config = {
    allowUnfree = true;
  };
  
  environment.systemPackages = with pkgs; [
    neovim
    #git
    neofetch
    fastfetch
    #htop
    brave
    #kitty
    wget
    wl-clipboard
    cliphist
    hyprpaper
    hypridle
    hyprlock
    rofi-wayland
    python3
    pamixer
    pavucontrol
    gnome.nautilus
    libsForQt5.dolphin
    tree
    vscodium-fhs
    cpu-x
    vesktop
    tgpt
    neovide
    slurp
    grim
    brightnessctl
    spice
    spice-protocol
    spice-gtk
    blueberry
    lxde.lxsession
    unetbootin
    xorg.xhost
    isoimagewriter
    gparted
    mediawriter
    libsForQt5.qt5.qtwayland
    qt6.qtwayland
    catppuccin-sddm-corners
    elegant-sddm
    sddm-chili-theme
    radeontop
    glxinfo
    eza
    mpv
    eww
    libnotify
    pcmanfm
		lxmenu-data
		shared-mime-info
		fragments
		libsForQt5.ark
		disfetch
		libsForQt5.kdenlive
		discordo
		ripcord
		barrier
		input-leap
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    noto-fonts
    noto-fonts-emoji
    twemoji-color-font
    font-awesome
    powerline-fonts
    powerline-symbols
    (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
  ];

}
