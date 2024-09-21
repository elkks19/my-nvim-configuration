return {
	{
		-- INFO: RESIZING WINDOWS MORE INTUITIVELY
		'chaoren/vim-resizewindow'
	},
	{
		'christoomey/vim-tmux-navigator',
		cmd = {
			'TmuxNavigateLeft',
			'TmuxNavigateDown',
			'TmuxNavigateUp',
			'TmuxNavigateRight',
			'TmuxNavigatePrevious',
		},
		keys = {
			{ '<c-h>', '<cmd><C-U>TmuxNavigateLeft<cr>' },
			{ '<c-j>', '<cmd><C-U>TmuxNavigateDown<cr>' },
			{ '<c-k>', '<cmd><C-U>TmuxNavigateUp<cr>' },
			{ '<c-l>', '<cmd><C-U>TmuxNavigateRight<cr>' },
			{ '<c-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>' },
		},
	},
	{
		-- INFO: BASICALLY YOU CAN YANK A WINDOW AND PASTE IT IN ANOTHER WINDOW
		'wesQ3/vim-windowswap'
	},
	{
		'szw/vim-maximizer',
		cmd = {
			'MaximizerToggle'
		},
		keys = {
			{ '<leader>sm', '<cmd>MaximizerToggle<CR>' }
		}
	},
}

