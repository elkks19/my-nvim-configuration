return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
	cmd = 'Telescope',
	keys = {
		{ '<leader>cs', '<cmd>Telescope colorscheme<cr>', { desc = 'Select colorscheme' } },
		{ '<leader>r', '<CMD>Telescope registers<CR>', { desc = 'Select register' }},
		{ '<leader>ff', '<cmd>Telescope find_files find_command=rg,--hidden,--files<cr>', { desc = 'Find files'}},
		{ '<leader>gf', '<cmd>Telescope find_files find_command=rg,--ignore,--hidden,--files,-u<cr>', { desc = 'Find files but include hidden and gitignored' }},
		{ '<leader>fs', '<cmd>Telescope live_grep<cr>', { desc = 'Greps in files on cwd' }},
		{ '<leader>fc', '<cmd>Telescope grep_string<cr>', { desc = 'Greps a string on files on cwd' }},
		{ '<leader>fe', '<cmd>Telescope emoji<cr>', { desc = 'Select an emoji' }},
		{ '<leader>ft', '<cmd>TodoTelescope<cr>', { desc = 'Select a todo tag' }},
	},
	dependencies = {
		'nvim-lua/plenary.nvim',
		'BurntSushi/ripgrep',
		{
			'nvim-telescope/telescope-fzf-native.nvim',
			build = 'make'
		},
		'xiyaowong/telescope-emoji.nvim',
		'nvim-telescope/telescope-ui-select.nvim',
		"nvim-telescope/telescope-file-browser.nvim",
	},
	config = function()
		local telescope = require('telescope')
		local actions = require('telescope.actions')

		telescope.setup({
			defaults = {
				layout_config = {
					vertical = {
						preview_cutoff = 0,
					},
				},
				mappings = {
					i = {
						['<C-k>'] = actions.move_selection_previous,
						['<C-j>'] = actions.move_selection_next,
						['<C-q>'] = actions.send_selected_to_qflist + actions.open_qflist,
						-- ['<C-k>'] = 'move_selection_previous',
						-- ['<C-j>'] = 'move_selection_next',
						-- ['<C-q>'] = 'send_selected_to_qflist + actions.open_qflist',
					},
				},
				extensions = {
					['ui-select'] = {
						require('telescope.themes').get_dropdown {

						}
					},
					emoji = {
						action = function(emoji)
							vim.fn.setreg('', emoji.value)
							print([[Presiona p o '*p para pegar este emoji]] .. emoji.value)
						end,
					},
				},
			}
		})
		telescope.load_extension('fzf')
		telescope.load_extension('emoji')
		telescope.load_extension('ui-select')
	end

}
