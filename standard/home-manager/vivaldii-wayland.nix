programs
 vivaldi = {
    commandLineArgs = [
        "--use-gl=desktop"
        "--enable-feautres=VaapiVideoEncoder,VaapiVideoDecoder,CanvasOopRasterization"
        "--enable-features=UseOzonePlatform"
        "--ozone-platform=wayland"
        "--disable-features=UseChromeOSDirectVideoDecoder"
    ];
 }