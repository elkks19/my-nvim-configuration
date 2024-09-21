return {
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v4.x',
		lazy = true,
		config = false,
	},
	{
		'williamboman/mason.nvim',
		lazy = false,
		config = true,
		handlers = {
			function(server_name)
				if server_name ~= 'emmet_ls'
				or server_name ~= 'intelephense'
				or server_name ~= 'tailwindcss'
				or server_name ~= 'htmx'
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

			require('lspconfig')['htmx'].setup({
				filetypes = { "html", "templ" },
			})

			require('lspconfig')['tailwindcss'].setup({
					filetypes = { "templ", "astro", "javascript", "typescript", "react" },
					init_options = { userLanguages = { templ = "html" } },
				})
			end,
		},

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
		}
	},

	-- Autocompletion
	{
		'hrsh7th/nvim-cmp',
		event = 'InsertEnter',
		dependencies = {
			{'L3MON4D3/LuaSnip'},
		},
		config = function()
			local cmp = require('cmp')

			cmp.setup({
				sources = {
					{name = 'nvim_lsp'},
				},
				mapping = cmp.mapping.preset.insert({
					['<C-Space>'] = cmp.mapping.complete(),
					['<C-u>'] = cmp.mapping.scroll_docs(-4),
					['<C-d>'] = cmp.mapping.scroll_docs(4),
				}),
				snippet = {
					expand = function(args)
						vim.snippet.expand(args.body)
					end,
				},
			})
		end
	},

	-- LSP
	{
		'neovim/nvim-lspconfig',
		cmd = {'LspInfo', 'LspInstall', 'LspStart'},
		event = {'BufReadPre', 'BufNewFile'},
		dependencies = {
			{'hrsh7th/cmp-nvim-lsp'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},
		},
		config = function()
			local lsp_zero = require('lsp-zero')

			-- lsp_attach is where you enable features that only work
			-- if there is a language server active in the file
			local lsp_attach = function(client, bufnr)
				local opts = {buffer = bufnr}

				vim.keymap.set('n', 'K', vim.lsp.buf.hover(), opts)

				vim.keymap.set('n', 'gd', function ()
					vim.cmd([[vsplit]])
					vim.lsp.buf.definition()
				end, opts)

				vim.keymap.set('n', 'gD', vim.lsp.buf.declaration(), opts)
				vim.keymap.set('n', 'gi', vim.lsp.buf.implementation(), opts)
				vim.keymap.set('n', 'go', vim.lsp.buf.type_definition(), opts)
				vim.keymap.set('n', 'gr', vim.lsp.buf.references(), opts)
				vim.keymap.set('n', 'gs', vim.lsp.buf.signature_help(), opts)
				vim.keymap.set('n', '<space>n', vim.lsp.buf.rename(), opts)
				vim.keymap.set({'n', 'x'}, '<F3>', vim.lsp.buf.format({async = true}), opts)
				vim.keymap.set({'n', 'v'}, '<leader>aa', vim.lsp.buf.code_action, opts)
			end

			lsp_zero.extend_lspconfig({
				sign_text = true,
				lsp_attach = lsp_attach,
				capabilities = require('cmp_nvim_lsp').default_capabilities()
			})
		end
	}
}
