-- env.lua
--------------------------------------------------------------------------------
-- ENVIRONMENT VARIABLES
--------------------------------------------------------------------------------

hl.config({
    -- https://wiki.hyprland.org/Configuring/Environment-variables/
    env = {
        "XCURSOR_SIZE, 24",
        "HYPRCURSOR_SIZE, 24",
        -- "GDK_SCALE, 2",
        -- "GDK_DPI_SCALE, 0.5",
        "QT_SCALE_FACTOR, 1.25",
        "QT_AUTO_SCREEN_SCALE_FACTOR, 1",
        "ELECTRON_OZONE_PLATFORM_HINT, wayland",
        "ELECTRON_ENABLE_NATIVE_WINDOW_OPEN, 1",
        "QT_QPA_PLATFORMTHEME, qt6ct",
        "QT_QPA_PLATFORM, wayland;xcb",
    },
})