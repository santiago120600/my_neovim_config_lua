return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  dependencies = {
    "echasnovski/mini.icons",
  },
  opts = {
    plugins = { spelling = true },
    defaults = {
      ["<leader>"] = {
        a = { name = "+Avante" },
        c = { name = "+Code (LSP/DAP)" },
        d = { name = "+Debug" },
        f = { name = "+Find/Files" },
        g = { name = "+Git" },
        l = { name = "+LazyGit" },
        n = { name = "+NeoTree" },
      },
    },
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)
    wk.register(opts.defaults)
  end,
}
