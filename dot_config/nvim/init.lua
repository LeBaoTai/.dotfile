require("configs.options")
require("configs.autocmds")
require("configs.keymaps")
require("configs.lazy")
--require("configs.lualine-config")
require("configs.windline-config")
require("configs.telescope-config")


if vim.g.neovide then
  vim.o.guifont ="JetBrainsMono Nerd Font:h10" -- text below applies for VimScript
  vim.g.neovide_cursor_animation_length = 0
  vim.g.neovide_cursor_animate_in_insert_mode = false
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_scroll_animation_length = 0.1
  vim.opt.linespace = 1
end
