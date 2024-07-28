-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.enable_tab_bar = false

config.color_scheme = 'AdventureTime'

config.background = {
    {
        source = {
            File = wezterm.home_dir .. '/Pictures/wallpaper/cat.jpg'
        },
        hsb = { brightness = 0.2 }
    }
}

return config;