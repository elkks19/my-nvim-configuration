return {
    'tamton-aquib/duck.nvim',
	-- options to hatch: 🦆 ඞ 🦀 🐈 🐎 🦖 🐤 (passed as hatch argument)
	keys = {
		{ '<leader>dd', function() require("duck").hatch() end, { desc = "Spawn a duck" }},
		{ '<leader>dk', function() require("duck").cook() end, { desc = "Cook a duck" }},
		{ '<leader>dc', function() require("duck").cook_all() end, { desc = "Cook all ducks" }},
	}
}
