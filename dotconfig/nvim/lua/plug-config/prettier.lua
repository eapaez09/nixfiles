-- local variables for replace vim.* commands
local api = vim.api
local keymap = api.nvim_set_keymap

-- Prettier
keymap('', '<Leader>p', ':Prettier<CR>', {noremap = false, silent = true})
