local setup, notify = pcall(require, "notify")

if not setup then
	return
end

notify.setup()

-- WE SET NOTIFY AS OUR DEFAULT NOTIFICATION PLUGIN
vim.notify = notify

