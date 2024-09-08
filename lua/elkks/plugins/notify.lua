local setup, notify = pcall(require, "notify")

if not setup then
	return
end

notify.setup({
	fps = 60,
	max_width = 50,
	max_height = 4,
	render = "compact",
	top_down = false,
	background_colour = "#000000",
})

-- WE SET NOTIFY AS OUR DEFAULT NOTIFICATION PLUGIN
vim.notify = notify

