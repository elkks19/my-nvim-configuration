return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 
		'nvim-lua/plenary.nvim',
		'BurntSushi/ripgrep',
		{ 
			'nvim-telescope/telescope-fzf-native.nvim', 
			build = 'make' 
		},
		"xiyaowong/telescope-emoji.nvim",
		'nvim-telescope/telescope-ui-select.nvim',
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				layout_config = {
					vertical = {
						preview_cutoff = 0,
					},
				},
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
						-- ["<C-k>"] = "move_selection_previous",
						-- ["<C-j>"] = "move_selection_next",
						-- ["<C-q>"] = "send_selected_to_qflist + actions.open_qflist",
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown {

						}
					},
					emoji = {
						action = function(emoji)
							vim.fn.setreg("", emoji.value)
							print([[Presiona p o "*p para pegar este emoji]] .. emoji.value)
						end,
					},
				},
			}
		})
		telescope.load_extension("fzf")
		telescope.load_extension("emoji")
		telescope.load_extension("ui-select")
	end

}
