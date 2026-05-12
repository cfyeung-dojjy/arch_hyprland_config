-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Example window rules that are useful

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name           = "suppress-maximize-events",
    match          = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name     = "fix-xwayland-drags",
    match    = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

-- https://wiki.hypr.land/FAQ/#how-do-i-screenshot
hl.window_rule {
    name = "flameshot-tweaks",
    match = {
        class = "flameshot",
        title = "flameshot",
    },
    rounding = 0,
    border_size = 0,
    fullscreen_state = 0,
    float = true,
    monitor = "DP-3",
    move = "0 0",
    size = "(monitor_w*2) (monitor_h)",
    pin = true,
    no_initial_focus = true,
    no_anim = true
}

hl.window_rule {
    name = "float-file-manager",
    match = {
        class = ".*dolphin$",
    },
    float = true,
    size = "(monitor_w*0.8) (monitor_h*0.8)",
}

hl.window_rule {
    name = "float-file-manager-from-browser",
    match = {
        class = "xdg-desktop-portal-gtk",
    },
    float = true,
    size = "(monitor_w*0.8) (monitor_h*0.8)",
}

hl.window_rule {
    name = "float-network-manager",
    match = {
        title = "iwgtk",
    },
    float = true,
    size = "(monitor_w*0.5) (monitor_h*0.5)",
}

hl.window_rule {
    name = "tile-steam-games",
    match = {
        class = "steam_app.*",
    },
    float = false,
}
