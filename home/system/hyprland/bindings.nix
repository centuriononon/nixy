{ pkgs, ... }: {
  wayland.windowManager.hyprland.settings = {
    bind = [
      "$mod,RETURN, exec, uwsm app -- ${pkgs.kitty}/bin/kitty" # Kitty
      "$mod,E, exec,  uwsm app -- ${pkgs.xfce.thunar}/bin/thunar" # Thunar
      "$mod,X, exec, powermenu" # Powermenu
      "$mod,SPACE, exec, menu" # Launcher
      "$shiftMod,1, exec,  uwsm app -- zen-beta" # Zen Browser
      "$shiftMod,4, exec,  uwsm app -- ${pkgs.planify}/bin/io.github.alainm23.planify" # Planify

      "$mod,W, killactive," # Close window
      "$mod,T, togglefloating," # Toggle Floating
      "$mod,F, fullscreen" # Toggle Fullscreen
      "$mod,M, fullscreenstate, 1" # Toggle Maximize
      "$mod,H, movefocus, l" # Move focus left
      "$mod,L, movefocus, r" # Move focus Right
      "$mod,K, movefocus, u" # Move focus Up
      "$mod,J, movefocus, d" # Move focus Down

      "$mod,PRINT, exec, screenshot region" # Screenshot region
      ",PRINT, exec, screenshot monitor" # Screenshot monitor
      "$shiftMod,PRINT, exec, screenshot window" # Screenshot window
      "ALT,PRINT, exec, screenshot region swappy" # Screenshot region then edit

      "$shiftMod,T, exec, hyprpanel-toggle" # Toggle hyprpanel
      "$shiftMod,C, exec, clipboard" # Clipboard picker with wofi
      "$shiftMod,E, exec, ${pkgs.wofi-emoji}/bin/wofi-emoji" # Emoji picker with wofi
      "$mod,F2, exec, night-shift" # Toggle night shift
    ] ++ (builtins.concatLists (builtins.genList (i:
      let ws = i + 1;
      in [
        "$mod,code:1${toString i}, workspace, ${toString ws}"
        "$mod SHIFT,code:1${toString i}, movetoworkspace, ${toString ws}"
      ]) 9));

    bindm = [
      "$mod,mouse:272, movewindow" # Move Window (mouse)
      "$mod,R, resizewindow" # Resize Window (mouse)
    ];

    bindl = [
      "$mod,F4, exec, sound-toggle" # Toggle Mute
      "$mod,F5, exec, ${pkgs.playerctl}/bin/playerctl play-pause" # Play/Pause Song
      "$mod,F6, exec, ${pkgs.playerctl}/bin/playerctl previous" # Previous Song
      "$mod,F7, exec, ${pkgs.playerctl}/bin/playerctl next" # Next Song
    ];

    bindle = [
      "$mod,F2, exec, sound-up" # Sound Up
      "$mod,F3, exec, sound-down" # Sound Down
      "$mod,F7, exec, brightness-up" # Brightness Up
      "$mod,F7, exec, brightness-down" # Brightness Down
    ];

  };
}
