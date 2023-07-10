{pkgs, ...}:

{
  services = {
    xserver.desktopManager.gnome.enable = true;
    xserver.displayManager.gdm.enable = true;
	gnome.core-utilities.enable = false;
  };
  
  qt.platformTheme = "gnome";
  qt.style = "adwaita-dark";
  
  environment = {
    systemPackages = with pkgs; [
	  gnome-console
	  gnome.nautilus
    ];
	gnome.excludePackages = with pkgs; [
	  gnome-tour
	];
  }