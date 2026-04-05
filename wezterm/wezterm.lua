local wezterm = require("wezterm")

return {
    color_scheme = "Everforest Dark Medium (Gogh)",
    default_prog = { "pwsh" },
    enable_tab_bar = false,
    font = wezterm.font("Cascadia Code NF"),
    keys = {
        {
            action = wezterm.action.ActivatePaneDirection("Down"),
            key = "DownArrow",
            mods = "ALT",
        },
        {
            action = wezterm.action.ActivatePaneDirection("Left"),
            key = "LeftArrow",
            mods = "ALT",
        },
        {
            action = wezterm.action.ActivatePaneDirection("Right"),
            key = "RightArrow",
            mods = "ALT",
        },
        {
            action = wezterm.action.ActivatePaneDirection("Up"),
            key = "UpArrow",
            mods = "ALT",
        },
        {
            action = wezterm.action.ActivateTabRelative(-1),
            key = "Tab",
            mods = "CTRL|SHIFT",
        },
        {
            action = wezterm.action.ActivateTabRelative(1),
            key = "Tab",
            mods = "CTRL",
        },
        {
            action = wezterm.action.AdjustPaneSize({ "Down", 10 }),
            key = "DownArrow",
            mods = "ALT|SHIFT",
        },
        {
            action = wezterm.action.AdjustPaneSize({ "Left", 10 }),
            key = "LeftArrow",
            mods = "ALT|SHIFT",
        },
        {
            action = wezterm.action.AdjustPaneSize({ "Right", 10 }),
            key = "RightArrow",
            mods = "ALT|SHIFT",
        },
        {
            action = wezterm.action.AdjustPaneSize({ "Up", 10 }),
            key = "UpArrow",
            mods = "ALT|SHIFT",
        },
        {
            action = wezterm.action.CloseCurrentPane({ confirm = false }),
            key = "w",
            mods = "CTRL",
        },
        {
            action = wezterm.action.CopyTo("Clipboard"),
            key = "C",
            mods = "CTRL",
        },
        {
            action = wezterm.action.PasteFrom("Clipboard"),
            key = "v",
            mods = "CTRL",
        },
        {
            action = wezterm.action.ScrollByLine(-10),
            key = "UpArrow",
            mods = "SHIFT",
        },
        {
            action = wezterm.action.ScrollByLine(10),
            key = "DownArrow",
            mods = "SHIFT",
        },
        {
            action = wezterm.action.ScrollByPage(-1),
            key = "PageUp",
        },
        {
            action = wezterm.action.ScrollByPage(1),
            key = "PageDown",
        },
        {
            action = wezterm.action.ScrollToBottom,
            key = "End",
            mods = "CTRL",
        },
        {
            action = wezterm.action.ScrollToTop,
            key = "Home",
            mods = "CTRL",
        },
        {
            action = wezterm.action.SpawnCommandInNewTab({ args = { "nvim", wezterm.config_dir .. "/wezterm.lua" } }),
            key = ",",
            mods = "CTRL",
        },
        {
            action = wezterm.action.SpawnTab("CurrentPaneDomain"),
            key = "t",
            mods = "CTRL",
        },
        {
            action = wezterm.action.SplitHorizontal,
            key = "RightArrow",
            mods = "CTRL|ALT",
        },
        {
            action = wezterm.action.SplitVertical,
            key = "DownArrow",
            mods = "CTRL|ALT",
        },
    },
    max_fps = 240,
}
