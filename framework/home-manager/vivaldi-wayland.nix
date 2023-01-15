{ inputs, outputs, lib, config, pkgs, ... }: {
programs.vivaldi = {
    enable = true;
    commandLineArgs = [
        "--enable-features=UseOzonePlatform"
        "--ozone-platform=wayland"
        "--enable-gpu-rasterization"
        "--ignore-gpu-blacklist"
        "--disable-gpu-driver-workarounds"
    ];
 };
} 
