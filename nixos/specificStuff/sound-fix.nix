# This file is aimed to fix an specific audio issue in my 
# laptop Asus C423 CHromebook.

{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    sof-firmware

  ];

  boot.extraModprobeConfig = ''
  options snd-intel-dspcfg dsp_driver=3
  options snd-sof-pci fw_path="intel/sof"
  '';

}
