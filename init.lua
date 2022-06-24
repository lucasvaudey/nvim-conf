require('plugins')
require'nvim-tree'.setup {}
require("flutter-tools").setup{} -- use defaults
require("telescope").load_extension("flutter")
-- Lua file format on save
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
require("null-ls").setup({
    -- you can reuse a shared lspconfig on_attach callback here
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
                    vim.lsp.buf.formatting_sync()
                end,
            })
        end
    end,
})
require('dapui').setup()
require('nvim-reload')
local keymap = require('utils.keymap')
keymap.setup()
local lsp = require('config.lsp')
lsp.setup()
require("bufferline").setup{}
require('lspsaga')
require('config.cmp').setup()
