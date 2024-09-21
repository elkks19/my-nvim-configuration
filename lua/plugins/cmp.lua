return {
    {
        'hrsh7th/nvim-cmp',
        config = function()
			local cmp = require("cmp")

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
    	end
	},
    {
        'hrsh7th/cmp-nvim-lsp',
    },
    {
        'L3MON4D3/LuaSnip',        
    },
	{
		'rafamadriz/friendly-snippets',
	}
}
