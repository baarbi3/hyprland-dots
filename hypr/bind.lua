-- bind.lua
--------------------------------------------------------------------------------
-- KEYBINDINGS & PROGRAMS
--------------------------------------------------------------------------------

local terminal = "kitty"
local fileManager = "thunar"
local menu = "wofi --show drun"
local mainMod = "SUPER"

-- 1. Standard Keybindings
hl.bind({
    -- Terminal & Shell Launcher
    { mainMod .. " SHIFT", "Q", "exec", terminal },
    { mainMod, "Q", "exec", 'kitty -o confirm_os_window_close=0 -e sh -c "fastfetch; exec $SHELL"' },
    
    -- Window Management
    { mainMod, "C", "killactive" },
    { mainMod, "M", "exit" },
    { mainMod, "E", "exec", fileManager },
    { mainMod .. " SHIFT", "E", "exec", terminal .. " yazi" },
    { mainMod, "V", "togglefloating" },
    { mainMod, "R", "exec", menu },
    { mainMod, "P", "pseudo" },
    { mainMod, "D", "togglesplit" },
    
    -- System & Utilities
    { mainMod, "X", "exec", "hyprlock" },
    { mainMod .. " SHIFT", "X", "exec", "wlogout" },
    { mainMod, "T", "exec", 'zsh -c "~/.config/waybar/scripts/theme-switcher.sh next"' },
    { mainMod .. " SHIFT", "T", "exec", 'zsh -c "~/.config/waybar/scripts/theme-switcher.sh list"' },
    { mainMod .. " SHIFT", "R", "exec", "pkill waybar && waybar &" },
    { mainMod, "Z", "exec", "swaync-client --toggle-panel" },

    -- Swap windows (Vim style)
    { mainMod .. " SHIFT", "H", "swapwindow", "l" },
    { mainMod .. " SHIFT", "L", "swapwindow", "r" },
    { mainMod .. " SHIFT", "K", "swapwindow", "u" },
    { mainMod .. " SHIFT", "J", "swapwindow", "d" },

    -- Move focus (Vim style)
    { mainMod, "H", "movefocus", "l" },
    { mainMod, "L", "movefocus", "r" },
    { mainMod, "K", "movefocus", "u" },
    { mainMod, "J", "movefocus", "d" },

    -- Screenshots
    { "SUPER", "Print", "exec", "grim ~/Pictures/screenshot-$(date +%s).png" },
    { "SUPER SHIFT", "Print", "exec", 'grim -g "$(slurp)" - | swappy -f -' },

    -- Special Workspace (Scratchpad)
    { mainMod, "S", "togglespecialworkspace", "magic" },
    { mainMod .. " SHIFT", "S", "movetoworkspace", "special:magic" },

    -- Scroll through existing workspaces
    { mainMod, "mouse_down", "workspace", "e+1" },
    { mainMod, "mouse_up", "workspace", "e-1" },
})

-- 2. Workspaces 1-6 Switch & Silent Move (Loops natively in Lua!)
for i = 1, 6 do
    hl.bind(mainMod, tostring(i), "workspace", tostring(i))
    hl.bind(mainMod .. " SHIFT", tostring(i), "movetoworkspacesilent", tostring(i))
end

-- 3. Mouse Binds (bindm)
hl.bindm({
    { mainMod, "mouse:272", "movewindow" },
    { mainMod, "mouse:273", "resizewindow" },
})

-- 4. Repeating + Locked Binds (bindel / Audio & Brightness)
hl.bindel({
    { "", "XF86AudioRaiseVolume", "exec", "wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+" },
    { "", "XF86AudioLowerVolume", "exec", "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-" },
    { "", "XF86AudioMute", "exec", "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle" },
    { "", "XF86AudioMicMute", "exec", "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle" },
    { "", "XF86MonBrightnessUp", "exec", "brightnessctl -e4 -n2 set 5%+" },
    { "", "XF86MonBrightnessDown", "exec", "brightnessctl -e4 -n2 set 5%-" },
})

-- 5. Locked Binds (bindl / Media Controls)
hl.bindl({
    { "", "XF86AudioNext", "exec", "playerctl next" },
    { "", "XF86AudioPause", "exec", "playerctl play-pause" },
    { "", "XF86AudioPlay", "exec", "playerctl play-pause" },
    { "", "XF86AudioPrev", "exec", "playerctl previous" },
})