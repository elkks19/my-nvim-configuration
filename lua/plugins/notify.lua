return {
	'rcarriga/nvim-notify',
	config = function()
		local notify = require("notify")
		notify.setup({
			fps = 60,
			max_width = 50,
			max_height = 4,
			render = "compact",
			top_down = false,
			background_colour = "#000000",
		})
		vim.notify = notify
	end
}
