-- animation.lua
--------------------------------------------------------------------------------
-- ANIMATIONS, LAYOUTS, AND MISC
--------------------------------------------------------------------------------

hl.config({
    -- https://wiki.hyprland.org/Configuring/Variables/#animations
    animations = {
        enabled = true,

        bezier = {
            "myBezier, 0.05, 0.9, 0.1, 1.05",
        },

        animation = {
            "windows, 1, 6, myBezier",
            "windowsIn, 1, 7, myBezier, slide",
            "windowsOut, 1, 7, default, slide",
            "border, 1, 10, default",
            "borderangle, 1, 8, default",
            "fade, 1, 7, default",
            "workspaces, 1, 6, default",
        },
    },

    -- https://wiki.hyprland.org/Configuring/Dwindle-Layout/
    dwindle = {
        pseudotile = true,
        preserve_split = true,
    },

    -- https://wiki.hyprland.org/Configuring/Master-Layout/
    master = {
        new_status = "master",
    },

    -- https://wiki.hyprland.org/Configuring/Variables/#misc
    misc = {
        force_default_wallpaper = -1,
        disable_hyprland_logo = false,
    },
})