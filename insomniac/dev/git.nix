{ pkgs, ... }: {
  home.packages = [ pkgs.github-cli ];

  programs.git = {
    enable = true;
    userName = "Inzamam2021";
    userEmail = "inzamamchowdhury20@gmail.com";

    aliases = {
      amend = "commit --amend --no-edit";
      epic-fail = "reset HEAD~1";
    };

    ignores = [ ".direnv" ];

    extraConfig = {
      commit.gpgsign = true;
      gpg.format = "ssh";
      user.signingKey = "~/.ssh/id_ed25519.pub";

      pull.rebase = true;
      push.autoSetupRemote = true;
    };
  };
}
