return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      "s1n7ax/nvim-window-picker", -- Optional: for better window picking experience
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    keys = {
      { "<leader>nt", "<cmd>Neotree toggle<cr>", desc = "Toggle NeoTree" },
      { "<leader>ntb", "<cmd>Neotree buffers<cr>", desc = "Show buffers" },
    },
    opts = {
        event_handlers = {
            {
                event = "file_open_requested",
                handler = function()
                    -- auto close
                    -- vim.cmd("Neotree close")
                    -- OR
                    require("neo-tree.command").execute({ action = "close" })
                end
            },
            filesystem = {
                filtered_items = {
                    visible = true,
                    hide_dotfiles = false,
                    hide_gitignored = false,
                    never_show = { ".DS_Store", "thumbs.db",".git" },
                },
            },
        },
    },
}