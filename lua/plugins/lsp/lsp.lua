return {
	'neovim/nvim-lspconfig',
	event = { 'BufReadPre', 'BufNewFile' },
	keys = {
		-- INFO: Format
		{
			'<leader>fo',
			function()
				vim.lsp.buf.format { async = false }
			end,
			{ desc = 'Format' }
		},
	}
}
