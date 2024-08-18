-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.default_prog = { 'pwsh', '-nologo' }
config.default_cwd = os.getenv("HOME")

config.use_fancy_tab_bar = false
config.color_scheme = 'Pastel Trans'
config.font = wezterm.font 'CaskaydiaCove NFM'
config.font_size = 10.0
config.initial_rows = 28
config.initial_cols = 115
config.window_background_opacity = 0.9

-- and finally, return the configuration to wezterm
return config