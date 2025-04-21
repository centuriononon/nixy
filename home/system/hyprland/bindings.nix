{ pkgs, ... }: {
  wayland.windowManager.hyprland.settings = {
    bind = [
      "$mod,RETURN, exec, uwsm app -- ${pkgs.kitty}/bin/kitty" # Kitty
      "$mod,E, exec,  uwsm app -- ${pkgs.xfce.thunar}/bin/thunar" # Thunar
      "$mod,X, exec, powermenu" # Powermenu
      "$mod,SPACE, exec, menu" # Launcher

      # Layouts
      "$mod,A,exec,hyprctl keyword input:kb_layout ru"
      "$mod,Cyrillic_ef,exec,hyprctl keyword input:kb_layout us"

      # Programs
      "$shiftMod,1, exec,  uwsm app -- zen-beta"
      "$shiftMod,2, exec,  uwsm app -- postman"
      "$shiftMod,3, exec,  uwsm app -- ${pkgs.planify}/bin/io.github.alainm23.planify"
      "$shiftMod,4, exec,  uwsm app -- telegram-desktop"

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

      # Switching Workspaces
      "$mod,1, workspace, 1" 
      "$mod,2, workspace, 2" 
      "$mod,3, workspace, 3" 
      "$mod,4, workspace, 4" 
      "$mod,5, workspace, 5" 
      "$mod,6, workspace, 6" 
      "$mod,7, workspace, 7" 
      "$mod,8, workspace, 8" 
      "$mod,9, workspace, 9" 
      "$mod,0, workspace, 10" 

      # Moving to Workspaces
      "$mod SHIFT,1, movetoworkspace, 1"
      "$mod SHIFT,2, movetoworkspace, 2"
      "$mod SHIFT,3, movetoworkspace, 3"
      "$mod SHIFT,4, movetoworkspace, 4"
      "$mod SHIFT,5, movetoworkspace, 5"
      "$mod SHIFT,6, movetoworkspace, 6"
      "$mod SHIFT,7, movetoworkspace, 7"
      "$mod SHIFT,8, movetoworkspace, 8"
      "$mod SHIFT,9, movetoworkspace, 9"
      "$mod SHIFT,0, movetoworkspace, 10"
    ];

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
