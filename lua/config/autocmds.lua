-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd("VimEnter", {
  desc = "Open telescope when opening a directory",
  pattern = "*",
  callback = function(args)
    -- Check if the argument is a directory (like ".")
    local arg = args.file
    if arg and vim.fn.isdirectory(arg) == 1 then
      -- Load Telescope and open file browser
      require("telescope.builtin").find_files({
        cwd = arg,
      })
    end
  end,
})