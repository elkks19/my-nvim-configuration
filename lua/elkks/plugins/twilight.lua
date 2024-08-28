local setup, twilight = pcall(require, "twilight.nvim")

if not setup then
	return
end

twilight.setup()
