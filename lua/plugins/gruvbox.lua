return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000, -- Ensure it loads early to set the colorscheme
    config = function()
      -- Optional: Configure gruvbox options here if needed
      -- require('gruvbox').setup({
      --   -- contrast = "hard", -- Example option
      --   -- transparent_mode = true,
      -- })
      vim.cmd.colorscheme "gruvbox"
    end,
  }
}
