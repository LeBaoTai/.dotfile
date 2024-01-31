return {
  "anuvyklack/windows.nvim",
  dependencies = { "anuvyklack/middleclass" },
  config = function()
    require('windows').setup()

    vim.keymap.set('n', "<leader>wm", "<cmd>WindowsMaximize<cr>", {})
    vim.keymap.set('n', "<leader>wv", "<cmd>WindowsMaximizeVertically<cr>", {})
    vim.keymap.set('n', "<leader>wh", "<cmd>WindowsMaximizeHorizontally<cr>", {})
    vim.keymap.set('n', "<leader>wq", "<cmd>WindowsEqualize<cr>", {})
  end
}
