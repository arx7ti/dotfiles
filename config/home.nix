{ config, pkgs, ... }:
let
  unstable = import <unstable> {};
  aliases = {
    doom = "~/.emacs.d/bin/doom";
  };
  kbdLayout = "us,ru";
  kbdVariant = ",";
  xinit = ''
    xhost +SI:localuser:$USER
    xset r rate 300 60
    setxkbmap -layout ${kbdLayout} -variant ${kbdVariant} -option lv3:ralt_switch -option grp_led:caps -option caps:super -option grp:ctrl_alt_toggle
  '';
in rec {
  home = {
      packages = with pkgs; [
        # (wineWowPackages.full.override {
        #   wineRelease = "staging";
        #   mingwSupport = true;
        # })
        # (winetricks.override {
        #   wine = wineWowPackages.staging;
        # })
        unar
        wineWowPackages.unstable
        sqlite
        unstable.p7zip
        nodePackages.npm
        unstable.electron
        yarn
        feh
        dmenu
        arandr
        firefox
        chromium tdesktop 
        tmux tmate
        zip unzip
        texlive.combined.scheme-full
        lm_sensors neofetch
        ffmpeg maim
        sbcl gcc glibc gnumake cmake gsl hdf5 libev pkg-config zeromq
        dmidecode 
        ranger
        nodePackages.prettier
        unstable.nodePackages.pyright
        nvme-cli
        zathura
      ];
      file = {
        ".xinitrc".text = ''
          $HOME/.xsession
        '';
        ".agignore".source = ./home/agignore;
        ".tmate.conf".source = ./home/tmate.conf;
        ".tmux.conf".source = ./home/tmux.conf;
        ".config/tmux" = {
          source = ./home/config/tmux;
          recursive = true;
        };
      };
  };
  # Let Home Manager install and manage itself.
  programs = {
       emacs = {
           enable = true;
           extraPackages = (epkgs: with epkgs; [
              nix-mode exwm jupyter pdf-tools
              lispy evil-lispy vterm 
	   ]);
       };
      git = {
          enable = true;
          userName = "";
          userEmail = "";
      };
      direnv = {
        enable = true;
        enableBashIntegration = true;
        enableZshIntegration = true;
        enableNixDirenvIntegration = true;
      };
      fzf = {
        enable = true;
        defaultCommand = "fd --type f";
        defaultOptions = [ "--height 40%" "--prompt »" ];
        fileWidgetCommand = "fd --type f";
        fileWidgetOptions = [ "--preview 'head {}'" ];
        changeDirWidgetCommand = "fd --type d";
        changeDirWidgetOptions = [ "--preview 'tree -C {} | head -200'" ];
        historyWidgetOptions = [ "--tac" "--exact" ];
        enableBashIntegration = true;
        enableZshIntegration = true;
      };
      zsh = {
        enable = true;
        autocd = true;
        dotDir = ".config/zsh";
        enableCompletion = true;
        enableAutosuggestions = true;
        defaultKeymap = "viins";
        shellAliases = aliases;
        plugins = [
          {
            name = "sfz";
            src = builtins.fetchGit {
              url = "https://github.com/teu5us/sfz-prompt.zsh";
            };
          }
          {
            name = "fzf-tab";
            src =
              builtins.fetchGit { url = "https://github.com/Aloxaf/fzf-tab"; };
          }
          {
            name = "zsh-autosuggestions";
            src = builtins.fetchGit {
              url = "https://github.com/zsh-users/zsh-autosuggestions";
            };
          }
          {
            name = "fast-syntax-highlighting";
            src = builtins.fetchGit {
              url = "https://github.com/desyncr/fast-syntax-highlighting";
            };
          }
        ];
        initExtra = ''
          bindkey '^F' autosuggest-accept
          bindkey '^G' toggle-fzf-tab
        '';
      };
      home-manager.enable = true;
  };
  services = {
    lorri.enable = true;
  };
  fonts.fontconfig = {
    enable = true;
  };
  xsession = {
  	enable = true;
    pointerCursor = {
      package = pkgs.numix-cursor-theme;
      name = "Numix-Cursor-Light";
      size = 28;
    };
  	windowManager.command = "dbus-launch --sh-syntax --exit-with-session emacs --eval '(exwm-init)'";
	initExtra = xinit;
  };

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "20.03";
}
