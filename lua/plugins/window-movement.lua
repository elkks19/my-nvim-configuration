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
			{ '<c-h>', '<cmd><C-U>TmuxNavigateLeft<cr>', { desc = 'Navigate Left' } },
			{ '<c-j>', '<cmd><C-U>TmuxNavigateDown<cr>', { desc = 'Navigate Down' } },
			{ '<c-k>', '<cmd><C-U>TmuxNavigateUp<cr>', { desc = 'Navigate Up' } },
			{ '<c-l>', '<cmd><C-U>TmuxNavigateRight<cr>', { desc = 'Navigate Right' } },
			{ '<c-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>', { desc = 'Navigate Previous' } },
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
			{ '<leader>sm', '<cmd>MaximizerToggle<CR>', { desc = 'Maximize a window' }}
		}
	},
}

