local setup, live_server = pcall(require, "live-server")

if not setup then
  return
end

live_server.setup({
	args = {
		'--port=5000',
	}
})
