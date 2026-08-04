-- input.lua
--------------------------------------------------------------------------------
-- INPUT DEVICES, GESTURES, & PER-DEVICE CONFIGS
--------------------------------------------------------------------------------

hl.config({
    -- https://wiki.hyprland.org/Configuring/Variables/#input
    input = {
        kb_layout = "us",
        kb_variant = "",
        kb_model = "",
        kb_options = "",
        kb_rules = "",

        follow_mouse = 1,

        sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

        touchpad = {
            natural_scroll = true,
            scroll_factor = 0.3,
            -- clickfinger_behaviour = true,
            clickfinger_behavior = true,
        },
    },

    -- https://wiki.hyprland.org/Configuring/Variables/#gestures
    gesture = {
        "3, horizontal, workspace",
    },

    -- Per-device configurations
    -- https://wiki.hyprland.org/Configuring/Keywords/#per-device-input-configs
    device = {
        {
            name = "epic-mouse-v1",
            sensitivity = -0.5,
        },
    },
})