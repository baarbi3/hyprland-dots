--------------------------------------------------------------------------------
-- Plagus' Hyprland Config
--------------------------------------------------------------------------------

-- 1. Main Configuration Options
hl.config({
    -- Sourced Lua modules
    source = {
        "bind.lua",
        "animation.lua",
        "looknfeel.lua",
        "permissions.lua",
        "startup.lua",
        "env.lua",
        "input.lua",
        "colors.lua",
    },

    -- Monitors
    monitor = {
        -- HDMI is at top-left (0,0)
        "HDMI-A-1, 1920x1080@60, 0x0, 1",
        -- Laptop screen moved to the right (starts at 1920)
        "eDP-1, 1920x1200@60, 1920x0, 1.25",
    },

    -- Workspace bindings to monitors
    workspace = {
        "1, monitor:HDMI-A-1",
        "2, monitor:HDMI-A-1",
        "3, monitor:HDMI-A-1",
        "4, monitor:HDMI-A-1",
        "5, monitor:HDMI-A-1",
        "6, monitor:eDP-1",
    },

    -- Per-device settings
    device = {
        {
            name = "xppen-deco-640-pen",
            enabled = false,
        },
        {
            name = "xppen-deco-640-mouse",
            enabled = false,
        },
    },

    -- Window Rules
    windowrule = {
        "match:class .*, suppress_event maximize on",
        "match:class pattern, no_focus on",
    },

    -- Plugins
    plugin = {
        hyprscrolling = {
            fullscreen_on_one_column = true,
        },
        hyprexpo = {
            columns = 2,
            gap_size = 5,
            bg_col = "rgb(111111)",
            workspace_method = "center 1",
            skip_empty = true,
        },
    },
})