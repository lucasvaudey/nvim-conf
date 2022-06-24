local M = {}

local lsp = require('lspconfig')

function M.setup()
	lsp.sumneko_lua.setup {
		settings = {
			Lua = {
				diagnostics = {
					globals = { 'vim' },
				},
			},
		}, }
end

return M
