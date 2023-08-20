{ pkgs, ... }:
{
  imports = [
    ./git.nix
    ./shell.nix
    ./vscode.nix
  ];
}
