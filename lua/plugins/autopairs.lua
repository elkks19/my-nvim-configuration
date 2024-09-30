return {
	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		opts= {
			check_ts = true,
			ts_config = {
				lua = { "string" },
				javascript = { "template_string" },
				java = false,
			},
			map_cr = true,
		}
	},
	{
		'windwp/nvim-ts-autotag',
		event = "InsertEnter",
	}
}