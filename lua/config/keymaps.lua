-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Key mappings for tab navigation
vim.api.nvim_set_keymap('n', '<TAB>', ':tabn<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-TAB>', ':tabp<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-t>', ':tabnew .<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-w>', ':tabclose<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>qa', ':qa<CR>', { noremap = true, silent = true })

-- Key mappings for navigating to the next and previous buffers
vim.api.nvim_set_keymap('n', 'nb', ':bnext<CR>', { noremap = true, silent = true })  -- Next buffer
vim.api.nvim_set_keymap('n', 'pb', ':bprevious<CR>', { noremap = true, silent = true })  -- Previous buffer