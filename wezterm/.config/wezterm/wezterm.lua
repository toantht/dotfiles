-- Pull in the wezterm API
local wezterm = require("wezterm")

local act = wezterm.action
local mux = wezterm.mux

-- This will hold the configuration.
local config = wezterm.config_builder()

if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
	-- We are running on Windows; maybe we emit different
	config.default_prog = {"powershell.exe", "-NoLogo"}
	-- config.default_domain = "WSL:Ubuntu-24.04"
end

config.color_scheme = "Tokyo Night"
config.term = "xterm-256color"

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 16

-- config.enable_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

config.window_decorations = "INTEGRATED_BUTTONS | RESIZE"
config.window_background_opacity = 0.9

-- keymaps
config.keys = {
	{
		key = "Q",
		mods = "CTRL|SHIFT",
		action = wezterm.action.CloseCurrentPane {
			confirm = false
		}
	},
	{
		key = "O",
		mods = "CTRL|ALT",
		-- toggling opacity
		action = wezterm.action_callback(function(window, _)
			local overrides = window:get_config_overrides() or {}
			if overrides.window_background_opacity == 1.0 then
			overrides.window_background_opacity = 0.9
			else
			overrides.window_background_opacity = 1.0
			end
			window:set_config_overrides(overrides)
		end)
	}
}

-- and finally, return the configuration to wezterm
return config
