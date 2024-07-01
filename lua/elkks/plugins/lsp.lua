local lsp_zero = require('lsp-zero')
require('mason').setup({})
local lsp = require('lspconfig')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)


-- KEYMAPS FOR LSP
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, {})
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})


require('mason-lspconfig').setup({
	handlers = {
		function(server_name)
			require('lspconfig')[server_name].setup({})
		end,
	},


	-- WARNING: LENGUAJES QUE SE INSTALAN JUNTO CON NVIM
	ensure_installed = {
		'arduino_language_server',
		'asm_lsp',
		'bashls',
		'clangd',
		'cmake',
		'cssls',
		'cssmodules_ls',
		'css_variables',
		'emmet_language_server',
		'emmet_ls',
		'glsl_analyzer',
		'glslls',
		'html',
		'htmx',
		'jsonls',
		'jdtls',
		'quick_lint_js',
		'tsserver',
		'ltex',
		'texlab',
		'lua_ls',
		'autotools_ls',
		'markdown_oxide',
		'intelephense',
		'phpactor',
		'psalm',
		'sqlls',
		'sqls',
		'somesass_ls',
		'tailwindcss',
		'biome',
		'volar',
		'vuels',
		'vimls',
	}
})

