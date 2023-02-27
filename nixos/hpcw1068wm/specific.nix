# These are some of my specific configs for my laptop 
# HP cw - 1068wm

{ config, pkgs, ... }:
{

  # Graphics
  boot.initrd.kernelModules = [ "amdgpu" ];
  services.xserver.videoDrivers = [ "amdgpu" ];

  # Kernel Parameters
  boot.kernelParams = [
    "video=eDP:1920x1080@60"
    "quiet"
    "udev.log_level=3"
  ];

  environment.systemPackages = with pkgs; [
    heroic
    mesa
  ];

   hardware.opengl = {
    enable = true;
    extraPackages = with pkgs; [
      vaapiVdpau
      libva
    ];
  };

}
