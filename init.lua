require('plugins')
require 'nvim-tree'.setup {}
-- require("flutter-tools").setup {} -- use defaults
require("telescope")
-- Lua file format on save
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
require('dapui').setup()
require('nvim-reload')
local keymap = require('utils.keymap')
keymap.setup()
-- Theme
-- vim.cmd [[colorscheme tokyonight]]
require("bufferline").setup {}
require('config.cmp').setup()
