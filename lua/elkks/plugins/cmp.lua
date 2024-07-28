local cmp = require("cmp")
local cmp_action = require('lsp-zero').cmp_action()

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body)
		  	require('luasnip').lsp_expand(args.body)
		end,
	},
	mapping = 
	{
		["<C-j>"] = cmp.mapping.select_next_item({ behavior = 'select' }),
		["<C-k>"] = cmp.mapping.select_prev_item({ behavior = 'select' }),

		["<Enter>"] = cmp.mapping.confirm({ select = false }),
		["<C-e>"] = cmp.mapping.abort(),
	},
	sources = {
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "buffer" },
	},

})
