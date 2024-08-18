local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
	return
end

local actions_setup, actions = pcall(require,  "telescope.actions")
if not actions_setup then
	return
end


telescope.setup({
	defaults = {
		layout_config = {
			horizontal = {
				preview_cutoff = 0,
			},
		},
		mappings = {
			i = {
				["<C-k>"] = actions.move_selection_previous,
				["<C-j>"] = actions.move_selection_next,
				["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
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
			}
		},
	},
})

telescope.load_extension("fzf")
telescope.load_extension("emoji")
telescope.load_extension("ui-select")
