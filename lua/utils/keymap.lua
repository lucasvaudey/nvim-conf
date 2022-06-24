local M = {}

function M.map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function M.setup()
	-- Config <leader>
	vim.g.mapleader = " "
	-- Toggle NvimTree
	M.map("n", "<C-n>",":NvimTreeToggle<CR>")
	-- Flutter command !
	M.map("n", "<F5>",":FlutterRun<CR>")
	M.map("n", "<F6>",":Telescope flutter commands<CR>")
	-- Telescope find files & grep
	M.map('n', "<C-p>", ":Telescope find_files<cr>")
	M.map('n', "<C-f>", ":Telescope live_grep<cr>")
	-- Debugging
	M.map('n', "<C-g>", ":lua require'dap'.toggle_breakpoint()<cr>")
	M.map('n', "<C-c>", ":lua require'dap'.continue()<cr>")
	-- Create a terminal
	M.map('n','<C-q>',':belowright split | te<cr>')
	-- Moving window !
	M.map('n','<C-j>','<C-w>j')
	M.map('n','<C-h>','<C-w>h')
	M.map('n','<C-k>','<C-w>k')
	M.map('n','<C-l>','<C-w>l')
	-- lsp remap
 	-- M.map('n','gd',":Lspsaga lsp_finder<cr>")
	M.map('n',',',':lua vim.lsp.buf.code_action()<cr>')
	M.map('n','gd',':lua vim.lsp.buf.definition()<cr>')
	-- BufferLine remap
	M.map('n','<S-l>',':BufferLineCycleNext<cr>')
	M.map('n','<S-h>',':BufferLineCyclePrev<cr>')
	-- lsp saga
end

return M

