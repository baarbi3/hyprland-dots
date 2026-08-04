-- startup.lua
--------------------------------------------------------------------------------
-- AUTOSTART
--------------------------------------------------------------------------------

hl.config({
    exec_once = {
        "dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP",
        "nm-applet --indicator",
        "swaync",
        "wl-paste --watch cliphist store",
        "hypridle",
        "otd-daemon",
        -- "hyprlock",
        "swww-daemon",
        "~/.config/waybar/scripts/theme-switcher.sh restore",
        "waybar",
        "blueman-applet",
    },
})