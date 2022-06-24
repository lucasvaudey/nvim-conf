require('plugins')
require 'nvim-tree'.setup {}
require("flutter-tools").setup {} -- use defaults
require("telescope").load_extension("flutter")
-- Lua file format on save
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
require('dapui').setup()
require('nvim-reload')
local keymap = require('utils.keymap')
keymap.setup()
require('config.lsp').setup()
require("bufferline").setup {}
require('lspsaga')
require('config.cmp').setup()
