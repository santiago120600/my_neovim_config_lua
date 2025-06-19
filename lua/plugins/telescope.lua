return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = { 
    "nvim-lua/plenary.nvim",
    { "piersolenski/telescope-import.nvim" },
    { "nvim-telescope/telescope-ui-select.nvim" },
  },
  cmd = "Telescope",
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>",  desc = "Live Grep" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>",    desc = "Find Buffers" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>",  desc = "Help Tags" },
    { "<leader>fo", "<cmd>Telescope oldfiles<cr>",   desc = "Recent Files" },
    { "<leader>fi", "<cmd>Telescope import<cr>",     desc = "Telescope Import" },
    -- Add more mappings as needed (e.g., git_files, keymaps, commands)
  },
  config = function()
    require("telescope").setup {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
        file_ignore_patterns = { "node_modules", ".git" },
        mappings = {
          i = {
            ["<C-j>"] = require("telescope.actions").move_selection_next,
            ["<C-k>"] = require("telescope.actions").move_selection_previous,
            ['<c-d>'] = require('telescope.actions').delete_buffer
          },
          n = {
            ['<c-d>'] = require('telescope.actions').delete_buffer,
          },
        },
      },
      -- pickers = { ... }, -- Customize specific pickers
      -- extensions = { ... }, -- Load extensions like fzf-native
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown {},
        },
        import = {
          -- Imports can be added at a specified line whilst keeping the cursor in place
          insert_at_top = true,
          -- Optionally support additional languages or modify existing languages...
          custom_languages = {
            {
              -- The filetypes that ripgrep supports (find these via `rg --type-list`)
              extensions = { "java" },
              filetypes = { "java" },
            },
          },
        },
      },
      require("telescope").load_extension("import"),
      require("telescope").load_extension("ui-select")
    }
  end,
}
