local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Tokyo Night Moon"

config.font = wezterm.font("Berkeley Mono")
config.font_size = 12.0
config.freetype_load_flags = "NO_HINTING"
config.hide_tab_bar_if_only_one_tab = true

config.keys = {
	{
		key = "h",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "v",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
}

return config
