return {
    "nvim-telescope/telescope.nvim",
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0
      },
    },
    mappings = {
        n = {
            ["<leader>ff"] = {
                function()
                    require("telescope.builtin").find_files()
                end,
                desc = "Find Files",
            },
            ["<leader>fb"] = {
              function()
                  require("telescope.builtin").buffers()
              end,
              desc = "Find buffer",
          },
        },
    },
}
