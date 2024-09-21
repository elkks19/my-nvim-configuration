return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
	cmd = 'Telescope',
	keys = {
		{ '<leader>cs', '<cmd>Telescope colorscheme<cr>' },
		{ '<leader>r', '<CMD>Telescope registers<CR>' },
		{ '<leader>ff', '<cmd>Telescope find_files find_command=rg,--hidden,--files<cr>' },
		{ '<leader>gf', '<cmd>Telescope find_files find_command=rg,--ignore,--hidden,--files,-u<cr>' },
		{ '<leader>fs', '<cmd>Telescope live_grep<cr>' },
		{ '<leader>fc', '<cmd>Telescope grep_string<cr>' },
		{ '<leader>fb', '<cmd>Telescope buffers<cr>' },
		{ '<leader>fh', '<cmd>Telescope help_tags<cr>' },
		{ '<leader>fe', '<cmd>Telescope emoji<cr>' },
		{ '<leader>ft', '<cmd>TodoTelescope<cr>' },
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
