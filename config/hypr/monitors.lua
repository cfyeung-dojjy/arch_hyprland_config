-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
require("programs")

hl.monitor({
    output   = left_monitor,
    mode     = "preferred",
    position = "auto-left",
    scale    = 1,
})
hl.monitor({
    output   = main_monitor,
    mode     = "preferred",
    position = "0x0",
    scale    = 1,
})
