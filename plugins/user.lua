return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  -- {
  --   "sainnhe/sonokai",
  --   name = "sonokai",
  --   config = function()
  --     require("sonokai").setup {}
  --   end,
  -- },
    {
      "sainnhe/sonokai",
      init = function() -- init function runs before the plugin is loaded
        vim.g.sonokai_style = "andromeda"
      end,
    },
    { "dracula/vim" },
    { "mg979/vim-visual-multi", lazy = false }
}
