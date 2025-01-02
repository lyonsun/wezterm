-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config = {
	font = wezterm.font({ family = "JetBrains Mono", weight = "Regular" }),
	font_size = 18.0,
	color_scheme = "Catppuccin Mocha",
	enable_tab_bar = false,
	window_decorations = "RESIZE",
	window_background_opacity = 0.85,
	macos_window_background_blur = 20,
	initial_rows = 80,
	initial_cols = 160,
	send_composed_key_when_left_alt_is_pressed = true,
	send_composed_key_when_right_alt_is_pressed = true,
	keys = {
		{ key = "n", mods = "CTRL|SHIFT", action = wezterm.action.ToggleFullScreen },
	},
}

-- and finally, return the configuration to wezterm
return config
