return {
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function ()
    vim.keymap.set("n", "<leader>nf", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })
    require("oil").setup({
      columns = {
        "icon",
        "permissions",
        "size",
        -- "mtime",
      },

      float = {
        -- Padding around the floating window
        padding = 5,
        max_width = 0,
        max_height = 0,
        border = "rounded",
        win_options = {
          winblend = 0,
        },
        -- This is the config that will be passed to nvim_open_win.
        -- Change values here to customize the layout
        override = function(conf)
          return conf
        end,
      },
    })
  end
}
