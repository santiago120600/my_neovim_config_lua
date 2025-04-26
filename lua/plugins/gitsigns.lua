return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    -- Configuration options go here, see :help gitsigns
    signs = {
      add          = { text = '┃' },
      change       = { text = '┃' },
      delete       = { text = '_' },
      topdelete    = { text = '‾' },
      changedelete = { text = '~' },
      untracked    = { text = '┆' },
    },
    current_line_blame = true,   -- Show blame info for the current line
    current_line_blame_opts = {
      virt_text = true,
      virt_text_pos = "eol",   -- 'eol' | 'overlay' | 'right_align'
      delay = 500,             -- Delay before showing blame
      ignore_whitespace = false,
    },
    -- Add keymaps here or using general keymap setup
    -- Example mappings (consider adding these to your general keymap config or here)
    -- map('n', '<leader>hs', gs.stage_hunk)
    -- map('n', '<leader>hr', gs.reset_hunk)
    -- map('v', '<leader>hs', function() gs.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
    -- map('v', '<leader>hr', function() gs.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
    -- map('n', '<leader>hS', gs.stage_buffer)
    -- map('n', '<leader>hR', gs.reset_buffer)
    -- map('n', '<leader>hp', gs.preview_hunk)
    -- map('n', '<leader>hb', function() gs.blame_line{full=true} end)
    -- map('n', ']h', gs.next_hunk)
    -- map('n', '[h', gs.prev_hunk)
  },
}
