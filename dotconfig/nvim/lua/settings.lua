-- Variables to VIM Commands
local o = vim.o -- vim options
local wo = vim.wo -- window values
local bo = vim.bo -- buffer values
local set = vim.opt -- general vim options
local g = vim.g -- global values
local env = vim.env -- environment variables
local cmd = vim.cmd -- VimScript commands
local key = vim.keymap -- keymapping
local api = vim.api -- vim API

-- General Settings
g.mapleader = ' '
set.number = true
set.mouse = 'a'
set.clipboard = 'unnamedplus'
set.ruler = true
set.laststatus = 0
set.cursorline = true
set.background = 'dark'
set.smartindent = true
set.autoindent = true
set.expandtab = true
set.smarttab = true
set.tabstop = 4
set.shiftwidth = 4
set.showtabline = 4
set.formatoptions = 'cro'
set.hidden = true
set.wrap = false
set.encoding = 'utf-8'
set.fileencoding = 'utf-8'
set.autochdir = true
set.termguicolors = true
cmd ('filetype on')
cmd ('filetype indent on')
cmd ('filetype plugin on')
cmd ('syntax enable')
