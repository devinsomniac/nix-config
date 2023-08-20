{ pkgs, ... }:
{
  imports = [
    ./dev
  ];

  home = {
    username = "insomniac";
    homeDirectory = "/home/insomniac";
    stateVersion = "23.05";

    packages = with pkgs; [
      firefox
      libreoffice
      spotify
    ];
  };

  programs.home-manager.enable = true;

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";
}
