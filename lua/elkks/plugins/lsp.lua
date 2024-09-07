local lsp_zero = require('lsp-zero')
require('mason').setup({})
local lsp = require('lspconfig')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)


-- KEYMAPS FOR LSP
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
-- vim.keymap.set('n', '<space>n', vim.lsp.buf.rename, {})
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
vim.keymap.set('n', 'gd', function ()
		vim.cmd([[vsplit]])
		vim.lsp.buf.definition()
	end, {})
vim.keymap.set({'n', 'v'}, '<leader>aa', vim.lsp.buf.code_action, {})


require('mason-lspconfig').setup({
	handlers = {
		function(server_name)
			if server_name ~= 'emmet_ls'
				or server_name ~= 'intelephense'

				then
				require('lspconfig')[server_name].setup({})
			end

			require('lspconfig')['emmet_ls'].setup({
				filetypes = {
					'html',
					'templ',
					'css',
					'scss',
					'javascript',
					'vue',
					'blade',
					'json',
					'md',
					'markdown',
				}
			})

			require('lspconfig')['intelephense'].setup({
				filetypes = {
					'blade',
					'php',
				}
			})
		end,
	},


	-- WARNING: LENGUAJES QUE SE INSTALAN JUNTO CON NVIM
	ensure_installed = {
		'arduino_language_server',
		'asm_lsp',
		'autotools_ls',
		'bashls',
		'biome',
		'clangd',
		'cmake',
		'cssls',
		'cssmodules_ls',
		'css_variables',
		'emmet_language_server',
		'emmet_ls',
		'glsl_analyzer',
		'golangci_lint_ls',
		'gopls',
		'html',
		'htmx',
		'intelephense',
		'jdtls',
		'jsonls',
		'lua_ls',
		'markdown_oxide',
		'phpactor',
		'psalm',
		'quick_lint_js',
		'somesass_ls',
		'sqlls',
		'sqls',
		'tailwindcss',
		'templ',
		'texlab',
		-- INFO: DEPRECATED
		-- 'tsserver',
		'vtsls',
		'vuels',
		'vimls',
		'volar',
	}
})

