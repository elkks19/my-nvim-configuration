return {
	'folke/twilight.nvim',
	config = true,
	cmd = {
		'Twilight',
		'TwilightEnable',
		'TwilightDisable',
		'TwilightToggle',
	},
	keys = {
		{ '<leader>tt', '<cmd>TwilightToggle<CR>', { desc = 'Toggle Twilight' }},
	},
}
