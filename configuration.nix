{config, pkgs, ...}: {
  imports = [ 
    ./hardware-configuration.nix
    ./GNOME.nix
  ];

  boot = {
    cleanTmpDir = true;
	loader = {
      systemd-boot.enable = true;
	  systemd-boot.editor = false;
      efi.canTouchEfiVariables = true;
	};
    initrd.kernelModules = ["amdgpu"];
  };

  time.timeZone = "America/Los_Angeles";
  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    useXkbConfig = true;
  };

  hardware = {
    bluetooth.enable = false;
	sound.enable = true;
	qt.enable = true; # RELOCATE
    opengl = {
      enable = true;
      driSupport = true;
      driSupport32Bit = true;
      extraPackages = with pkgs; [
        rocm-opencl-icd
        rocm-opencl-runtime
        libva
        vaapiVdpau
      ];
    };
	pulseaudio = {
	  enable = true;
	  support32Bit = true;
    };
  };
  
  security = {
    sudo.enable = false;
	rtkit.enable = true; # for pipewire
	doas = {
	  enable = true;
	  extraRules = [{
	    groups = ["wheel"];
		keepEnv = true;
		persist = true;
	  }];
	};
  };	
	
  users.users.ivan = {
    isNormalUser = true;
    home = "/home/ivan";
    description = "Ivan B";
    extraGroups = ["wheel" "input" "audio"];
  };

  nix = {
    settings.auto-optimise-store = true;
	gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
	};
  };
 
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    neovim
    webcord-vencord
    wget
    firefox
    steam
    steamcmd
    steam-run
    gamemode
    lutris
    ffmpeg
    mpv
    python3
    btop
    git
    exa
    twemoji-color-font
    gparted
  ];

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };

  services = {
    flatpak.enable = true;
	xserver = {
      enable = true;
	  desktopManager.xterm.enable = false;
      layout = "us";
      videoDrivers = ["amdgpu"];
      xkbOptions = "eurosign:e,caps:escape";
    };
	pipewire = {
      enable = true;
	  alsa.enable = true;
	  alsa.support32bit = true;
	  pulse.enable = true;
    };
  };

  networking = {
    hostName = "nix";
	firewall = {
	  allowedTCPPorts = [];
      allowedUDPPorts = [];
      enable = true;
	};
  };

  system.stateVersion = "23.05"; # Dont change
}