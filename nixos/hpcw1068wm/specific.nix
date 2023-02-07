# These are some of my specific configs for my laptop 
# HP cw - 1068wm

{ config, pkgs, ... }:
{

  Graphics
  boot.initrd.kernelModules = [ "amdgpu" ];

  Kernel Parameters
  boot.kernelParams = [
    "video=eDP:1920x1080@68"
  ];

}
