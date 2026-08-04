-- looknfeel.lua
--------------------------------------------------------------------------------
-- LOOK AND FEEL
--------------------------------------------------------------------------------

hl.config({
    -- https://wiki.hyprland.org/Configuring/Variables/#general
    general = {
        gaps_in = 5,
        gaps_out = 10,
        border_size = 2,

        -- Active and inactive border colors
        ["col.active_border"] = "rgb(D08B57) rgb(BFAA80) 45deg",
        ["col.inactive_border"] = "rgb(3A372F)",

        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },

    -- https://wiki.hyprland.org/Configuring/Variables/#decoration
    decoration = {
        rounding = 0,
        rounding_power = 2,

        active_opacity = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled = true,
            range = 4,
            render_power = 3,
            color = "rgba(1F1D19ee)",
        },

        -- https://wiki.hyprland.org/Configuring/Variables/#blur
        blur = {
            enabled = true,
            size = 8,
            passes = 4,
            new_optimizations = true,
            contrast = 1.0,
            brightness = 1.0,
            noise = 0.015,
            vibrancy = 0.2,
            popups = true,
        },l
    },
})