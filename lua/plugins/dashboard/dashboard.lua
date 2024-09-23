return {
	-- TODO: Learn how to use this plugin lol
	"startup-nvim/startup.nvim",
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local startup = require("startup")
		local startup_utils = require("startup.utils")
		local sections = require("plugins.dashboard.sections")

		-- INFO: This are the bookarked files that will be displayed in the startup page
		startup.setup({
			header = sections.header,
			time = sections.currentTime,
			body = sections.bookmarks,

			parts = {
				"header",
				"time",
				"body",
			},

		  	options = {
				after = function()
					startup.create_mappings(sections.bookmarks.user_bookmark_mappings)
					startup_utils.oldfiles_mappings()
				end,
			  	mapping_keys = true,
			  	cursor_column = 0.5,
			  	empty_lines_between_mappings = true,
			  	disable_statuslines = true,
			  	paddings = { 1, 2, 3 },
		  	},

		  	mappings = {
				execute_command = "<CR>",
				open_file = "o",
				open_file_split = "<c-o>",
				open_section = "<TAB>",
				open_help = "?",
			},

			colors = {
				background = "#1f2227",
				folded_section = "#56b6c2",
			},
		})
	end

}

