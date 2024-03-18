{pkgs, ...}: let
	username = "eduardo";
in {
	fonts.fontconfig.enable = true;
	xdg = {
		enable = true;
		userDirs = {
			enable = true;
			createDirectories = true;
		};
	};



	nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true);
    };
  };	

	home = {
		username = "${username}";
		homeDirectory = "/home/${username}";
		stateVersion = "23.11";

		packages = with pkgs; [
			neovim
			wget
			dmenu
			neofetch
			cargo
			dunst
			clang-tools_9
			feh
			fuse-common
			freetype
			gcc
			gimp
			git
			alacritty
			unzip
			virt-manager
			xdg-desktop-portal-gtk
			xorg.libX11
			xorg.libX11.dev
			xorg.libxcb
			xorg.libXft
			xorg.libXinerama
			xorg.xinit
			xorg.xinput
			zoxide
			firefox
			arduino
			discord
			zathura
			pandoc
			texliveFull
			pavucontrol
			nerdfonts
			gopls
			go
			minecraft
		];
	};
}
