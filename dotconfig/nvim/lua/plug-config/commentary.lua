-- local variables for replace vim.* commands
local api = vim.api
local keymap = api.nvim_set_keymap

keymap ('n', '<space>/', ':Commentary<CR>', {noremap = true})
keymap ('v', '<space>/', ':Commentary<CR>', {noremap = true})
