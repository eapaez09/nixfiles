local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')

-- Airline
-- Plug 'vim-airline/vim-airline'
-- Plug 'vim-airline/vim-airline-themes'
--
-- Lightline
-- Plug 'itchyny/lightline.vim'

-- Lualine
Plug 'nvim-lualine/lualine.nvim'

-- Autopairs
Plug 'jiangmiao/auto-pairs'

-- Syntax Support
Plug 'sheerun/vim-polyglot'

-- Themes
Plug ('tomasiser/vim-code-dark')

-- Icons
Plug 'kyazdani42/nvim-web-devicons'

-- Intellisense
Plug ('neoclide/coc.nvim', {branch = 'release'})

-- Comments
Plug 'tpope/vim-commentary'

-- File Explorer
Plug 'kyazdani42/nvim-tree.lua'

-- Prettier (Format Code)
Plug ('prettier/vim-prettier', {['do'] = 'yarn install'})

-- Lorem Ipsum
Plug 'vim-scripts/loremipsum'

-- Github Copilot
-- Plug 'github/copilot.vim'

vim.call('plug#end')
