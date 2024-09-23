return {
	'neovim/nvim-lspconfig',
	event = {'BufReadPre', 'BufNewFile'},
	dependencies = {
	},
	-- config = function()
	-- 	local lspconfig = require('lspconfig')
	-- 	local cmp_nvim_lsp = require('cmp_nvim_lsp')
	-- 	local keymap = vim.keymap
	--
	-- 	local opts = { noremap = true, silent = true }
	--
	-- 	local lsp_attach = function(client, bufnr)
	-- 		opts.buffer = bufnr
	-- 		opts.desc = 'Show LSP references'
	-- 		keymap.set('n', 'gr', '<cmd>Telescope lsp_references<cr>',opts)
	--
	-- 		opts.desc = 'Go to Declaration'
	-- 		keymap.set('n', 'gd', function ()
	-- 			vim.cmd([[vsplit]])
	-- 			vim.lsp.buf.declaration()
	-- 		end, opts)
	--
	-- 		opts.desc = 'Show LSP definitions'
	-- 		keymap.set('n', 'gD', '<cmd>Telescope lsp_definitions<cr>', opts)
	--
	-- 		opts.desc = 'Show LSP implementations'
	-- 		keymap.set('n', 'gi', '<cmd>Telescope lsp_implementations<cr>', opts)
	--
	-- 		opts.desc = 'Show LSP type definitions'
	-- 		keymap.set('n', 'gt', '<cmd>Telescope lsp_type_definitions<cr>', opts)
	--
	-- 		opts.desc = 'Show LSP code actions'
	-- 		keymap.set({'n', 'v'}, '<leader>aa', vim.lsp.buf.code_action, opts)
	--
	-- 		opts.desc = 'Smart rename'
	-- 		keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
	--
	-- 		opts.desc = 'Show buffer diagnostics'
	-- 		keymap.set('n', '<leader>D', '<cmd>Telescope diagnostics bufnr=0<cr>', opts)
	--
	-- 		opts.desc = 'Show line diagnostics'
	-- 		keymap.set('n', '<leader>d', vim.diagnostics.open_float, opts)
	--
	-- 		opts.desc = 'Show LSP hover'
	-- 		keymap.set('n', 'K', vim.lsp.buf.hover, opts)
	-- 	end
	--
	-- 	local capabilities = cmp_nvim_lsp.default_capabilities()
	--
	-- 	local signs = {
	-- 		Error = '',
	-- 		Warn = '',
	-- 		Hint = '',
	-- 		Info = '',
	-- 	}
	--
	-- 	for type, icon in pairs(signs) do
	-- 		local hl = 'LspDiagnosticsSign' .. type
	-- 		vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = '' })
	-- 	end
	-- end
}

