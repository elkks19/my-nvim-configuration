local headers = require("plugins.dashboard.headers")

local function getTime()
	local clock = " " .. os.date "%H:%M"
	local date = " " .. os.date "%d-%m-%y"
	return {clock,date}
end

return {
	-- TODO: Read about lua modules
	header = {
		type = "text",
		oldfiles_directory = false,
		align = "center",
		fold_section = false,
		title = "Header",
		margin = 5,
		content = headers.neovim_header,
		highlight = "Statement",
		default_color = 0,
		oldfiles_amount = 0
	},
	currentTime = {
		type = "text",
		oldfiles_directory = false,
		align = "center",
		fold_section = false,
  		title = "Current time",
		margin = 5,
		content = getTime(),
		highlight = "Statement",
		default_color = 0,
		oldfiles_amount = 0
	},
	mappings = {
		type = "mapping",
		oldfiles_directory = false,
		align = "center",
		fold_section = false,
		title = "Basic Commands",
		margin = 5,
		content = {
			{ " Find File", "Telescope find_files", "<leader>ff" },
			{ "󰍉 Grep Files", "Telescope find_files", "<leader>fs" },
			{ " Recent Files", "Telescope oldfiles", "<leader>of" },
			{ " File Browser", "Telescope file_browser", "<leader>fb" },
			{ " Colorschemes", "Telescope colorscheme", "<leader>cs" },
			{ " New File", "lua require'startup'.new_file()", "<leader>nf" },
		},
		highlight = "String",
		default_color = 0,
		oldfiles_amount = 0
	},
	bookmarks = require("plugins.dashboard.bookmarks")
}
