-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

config.default_domain = 'WSL:Debian'

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 10
-- config.color_scheme = 'AdventureTime'

-- ctrl vとctrl cでコピーペースト
config.keys = {
  {
    key = 'v',
    mods = 'CTRL',
    action = wezterm.action.PasteFrom 'Clipboard',
  },
  {
    key = 'c',
    mods = 'CTRL',
    action = wezterm.action_callback(function(window, pane)
      local has_selection = window:get_selection_text_for_pane(pane) ~= ""
      if has_selection then
        window:perform_action(wezterm.action.CopyTo 'ClipboardAndPrimarySelection', pane)
        window:perform_action(wezterm.action.ClearSelection, pane)
      else
        window:perform_action(wezterm.action.SendKey { key = 'c', mods = 'CTRL' }, pane)
      end
    end),
  },
  -- cmd + s（保存）, cmd + a（全選択）, cmd + /（コメントアウト）をctrlに変換してNeovimでも使えるようにする
  { key = "s", mods = "CMD", action = wezterm.action.SendKey({ key = "s", mods = "CTRL" }) },
  { key = "a", mods = "CMD", action = wezterm.action.SendKey({ key = "a", mods = "CTRL" }) },
  { key = "/", mods = "CMD", action = wezterm.action.SendKey({ key = "/", mods = "CTRL" }) },
}

config.window_background_opacity = 0.85

config.show_tabs_in_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

-- config.font = wezterm.font("Hack Nerd Font", {weight="Regular", stretch="Normal", style="Normal"})
-- config.font = wezterm.font("JetBrains Mono Nerd Font")
-- config.font = wezterm.font("HackGen Console NF")
config.font = wezterm.font("HackGen Console NF", {weight="Bold", stretch="Normal", style="Normal"})
-- config.font = wezterm.font("HackGen35 Console NF")
-- config.font = wezterm.font("JetBrainsMono Nerd Font Mono")
-- config.font = wezterm.font("GohuFont 14 Nerd Font", {weight="Medium", stretch="Normal", style="Normal"})
-- config.font = wezterm.font("hoge font") -- Nerd Font版の名前
-- config.font = wezterm.font("CaskaydiaCove Nerd Font") -- Nerd Font版の名前
-- Finally, return the configuration to wezterm:
return config