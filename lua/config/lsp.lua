local M = {}

function M.setup()
	require('lspconfig').sumneko_lua.setup {}
end

return M
