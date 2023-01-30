-- Local variables for replace vim.* commands
local api = vim.api -- vim API
local keymap = api.nvim_set_keymap -- for remaps
local cmd = vim.cmd -- for VimScript commands
local g = vim.g --global values
--
-- Some important remappings
--
-- Use alt + hjkl to resize windows
keymap ('n', '<M-j>', ':resize -2<CR>', {noremap = true})
keymap ('n', '<M-k>', ':resize +2<CR>', {noremap = true})
keymap ('n', '<M-h>', ':vertical resize -2<CR>', {noremap = true})
keymap ('n', '<M-l>', ':vertical resize +2<CR>', {noremap = true})

-- Alternative way to save changes
keymap ('n', '<C-s>', ':w<CR>', {noremap = true})
keymap ('n', 'Z', '<Nop>', {noremap = true})
keymap ('n', 'ZZ', '<Nop>', {noremap = true})

-- Alternative way to quit without saving
keymap ('n', '<C-q>', ':q!<CR>', {noremap = true})

-- Close current buffer
keymap ('n', '<C-b>', ':bd<CR>', {noremap = true})

-- Better Tabbing
keymap ('v', '<', '<gv', {noremap = true})
keymap ('v', '>', '>gv', {noremap = true})

-- Move selected line / block of text in Visual Mode
keymap ('x', 'K', ":move '<-2<CR>gv-gv", {noremap = true}) -- shift + k to move up
keymap ('x', 'J', ":move '>+1<CR>gv-gv", {noremap = true}) -- shift + j to move down

-- Better window navigation
keymap ('n', '<C-Left>', '<C-w>h', {noremap = true})
keymap ('n', '<C-Down>', '<C-w>j', {noremap = true})
keymap ('n', '<C-Up>', '<C-w>k', {noremap = true})
keymap ('n', '<C-Right>', '<C-w>l', {noremap = true})

if g.vscode == nil
then
    -- TAB moves to next buffer in general mode
    keymap ('n', '<TAB>', ':bnext<CR>', {noremap = true})
    --shift + TAB moves to previous buffer
    keymap ('n', '<S-TAB>', ':bprevious<CR>', {noremap = true})
end

-- Luatree
keymap ('n', '<C-n>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
keymap ('i', '<C-n>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
keymap ('v', '<C-n>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
