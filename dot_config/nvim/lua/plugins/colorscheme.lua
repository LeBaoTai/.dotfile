return {
  -- "mcchrish/zenbones.nvim",
  -- "n1ghtmare/noirblaze-vim",
  "axvr/photon.vim",
  -- dependencies = { "rktjmp/lush.nvim" },
  priority = 1000,
  config = function()
      vim.cmd.colorscheme "photon"
  end
}
