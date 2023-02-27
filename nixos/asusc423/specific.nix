# This file is aimed to fix an specific audio issue in my 
# laptop Asus C423 CHromebook.

{ config, pkgs, ... }:

{

  # Graphics
  boot.initrd.kernelModules = [ "i915" ];

  # Kernel Parameters
  boot.consoleLogLevel = 0;
  boot.kernelParams = [
    "video=eDP-1:1366x768@60"
    "quiet"
    "udev.log_level=3"
  ];

  environment.systemPackages = with pkgs; [
    sof-firmware

  ];

  hardware.opengl = {
    enable = true;
    extraPackages = with pkgs; [
      intel-media-driver # LIBVA_DRIVER_NAME=iHD
      vaapiIntel         # LIBVA_DRIVER_NAME=i965 (older but works better for Firefox/Chromium)
      vaapiVdpau
      libvdpau-va-gl
    ];
  };

  boot.extraModprobeConfig = ''
  options snd-intel-dspcfg dsp_driver=3
  options snd-sof-pci fw_path="intel/sof"
  '';

}
