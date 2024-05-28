{
  imports = [
    ./broadcom/broadcom.nix
    ./hyprland.nix
    ./sound/sound.nix
    ./gpu/intel-amd.nix
    #./gpu/opengl.nix
    ./env.nix
    ./zram/zram.nix
    ./vm/virtmanager.nix
    ./essential/essential.nix
    ./appimage/appimage.nix
    ./nixvim/nixvim.nix
    ./pkgs/packages.nix
		./waydroid/waydroid.nix
		#./nur.nix
    #./stylix/stylix.nix

    # bootloader
    #./bootloader/systemd.nix
    ./bootloader/grub.nix
    #./grub-themes/grub-theme.nix

    # games
    ../games/steam.nix
    ../games/games.nix
  ];
}
