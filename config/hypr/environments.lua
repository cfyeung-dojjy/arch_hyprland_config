-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/

hl.env("GDK_SCALE", "1")
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

-- https://fcitx-im.org/wiki/Using_Fcitx_5_on_Wayland#KDE_Plasma
-- hl.env("GTK_IM_MODULE", "fcitx5")
hl.env("QT_IM_MODULE", "fcitx5")
hl.env("SDL_IM_MODULE", "fcitx5")
hl.env("XMODIFIERS", "@im=fcitx5")

hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
-- hl.env("XDG_CURRENT_DESKTOP", "Hyprland")

-- Dolphin file explorer need this to associate file type with application
-- hl.env("XDG_MENU_PREFIX", "plasma-")
hl.env("XDG_MENU_PREFIX", "arch-")
