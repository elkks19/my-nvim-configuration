return {
    'barrett-ruth/live-server.nvim',
	build = 'npm i -g live-server',
	cmd = {
		'LiveServerStart',
		'LiveServerStop',
		'LiveServerToggle'
	},
	config = true,
	keys = {
		{ '<leader>ls', '<cmd>LiveServerToggle<cr>', { desc = 'Toggle Live Server' } },
	}
}
