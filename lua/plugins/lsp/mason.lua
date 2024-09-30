return {
	'williamboman/mason.nvim',
	dependencies = {
		'williamboman/mason-lspconfig.nvim',
		"neovim/nvim-lspconfig",
		'hrsh7th/cmp-nvim-lsp',
		{ 'antosha417/nvim-lsp-file-operations', config = true }
	},
	lazy = false,
	events = { 'BufReadPre', 'BufNewFile' },
	config = function()
		local mason = require('mason')
		local mason_lspconfig = require('mason-lspconfig')
		local lspconfig = require('lspconfig')
		local cmp_nvim_lsp = require('cmp_nvim_lsp')
		local keymap = vim.keymap

		mason.setup({
			ui = {
				icons = {
					package_installed = '',
					package_pending = '',
					package_uninstalled = '',
				}
			}
		})

		mason_lspconfig.setup({
			automatic_installation = true,
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
				'vtsls',
				'vuels',
				'vimls',
				'volar',
			},

			handlers = {
				function(server_name)
					local opts = { noremap = true, silent = true }
					local lsp_attach = function(client, bufnr)
						opts.buffer = bufnr
						opts.desc = 'Show LSP references'
						keymap.set('n', 'gr', '<cmd>Telescope lsp_references<cr>', opts)

						opts.desc = 'Go to Definition'
						keymap.set('n', 'gd', function()
							vim.cmd([[vsplit]])
							vim.lsp.buf.definition()
						end, opts)

						opts.desc = 'Show LSP declaration'
						keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)

						opts.desc = 'Show LSP implementations'
						keymap.set('n', 'gi', '<cmd>Telescope lsp_implementations<cr>', opts)

						opts.desc = 'Show LSP type definitions'
						keymap.set('n', 'gt', '<cmd>Telescope lsp_type_definitions<cr>', opts)

						opts.desc = 'Show LSP code actions'
						keymap.set({ 'n', 'v' }, '<leader>aa', vim.lsp.buf.code_action, opts)

						opts.desc = 'Smart rename'
						keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)

						opts.desc = 'Show buffer diagnostics'
						keymap.set('n', '<leader>D', '<cmd>Telescope diagnostics bufnr=0<cr>', opts)

						opts.desc = 'Show line diagnostics'
						keymap.set('n', '<leader>d', vim.diagnostic.open_float, opts)

						opts.desc = 'Show LSP hover'
						keymap.set('n', 'K', vim.lsp.buf.hover, opts)
					end
					local capabilities = cmp_nvim_lsp.default_capabilities()
					if server_name ~= 'emmet_ls'
						or server_name ~= 'intelephense'
						or server_name ~= 'tailwindcss'
						or server_name ~= 'htmx'
					then
						lspconfig[server_name].setup({
							on_attach = lsp_attach,
							capabilities = capabilities,
						})
					end

					lspconfig['emmet_ls'].setup({
						on_attach = lsp_attach,
						capabilities = capabilities,
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

					lspconfig['intelephense'].setup({
						on_attach = lsp_attach,
						capabilities = capabilities,
						filetypes = {
							'blade',
							'php',
						}
					})

					lspconfig['htmx'].setup({
						on_attach = lsp_attach,
						capabilities = capabilities,
						filetypes = { "html", "templ" },
					})

					lspconfig['tailwindcss'].setup({
						on_attach = lsp_attach,
						capabilities = capabilities,
						filetypes = { "templ", "astro", "javascript", "typescript", "react" },
						init_options = { userLanguages = { templ = "html" } },
					})
					local signs = {
						Error = '',
						Warn = '',
						Hint = '',
						Info = '',
					}

					for type, icon in pairs(signs) do
						local hl = 'LspDiagnosticsSign' .. type
						vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = '' })
					end
				end
			}
		})
	end
}
