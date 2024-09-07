local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
	return
end

return packer.startup(function(use)
	use("wbthomason/packer.nvim")
	use("nvim-lua/plenary.nvim")

	-- COLORSCHEMES
	use("arturgoms/moonbow.nvim")
	use("drewtempelmeyer/palenight.vim")
	use("morhetz/gruvbox")
	use("catppuccin/nvim")
    use("michaeldyrynda/carbon")
    use("sainnhe/gruvbox-material")
	use("savq/melange-nvim")
	use("xero/miasma.nvim")
	use("rebelot/kanagawa.nvim")
	use("ptdewey/darkearth-nvim")
	-- COLORSCHEMES

	use("christoomey/vim-tmux-navigator")
	use("szw/vim-maximizer")
	use("tpope/vim-surround")
	use("vim-scripts/ReplaceWithRegister")
	use("numToStr/Comment.nvim")
	use("nvim-tree/nvim-tree.lua")
	use("kyazdani42/nvim-web-devicons")
	use("nvim-lualine/lualine.nvim")
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")

	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use("xiyaowong/telescope-emoji.nvim")
	use('nvim-telescope/telescope-ui-select.nvim')

	use("github/copilot.vim")

	use{"folke/todo-comments.nvim",
		requires={{ "nvim-lua/plenary.nvim" }}
	}

	-- LSP
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},
			{'neovim/nvim-lspconfig'},
			-- CMP
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
			-- CMP
		}
	}
	-- LSP

	-- CMP
	use('saadparwaiz1/cmp_luasnip')
	use('rafamadriz/friendly-snippets')
	-- CMP

	-- LARAVEL
	use('jwalton512/vim-blade')
	-- LARAVEL

	-- THE NEXT PLUGIN DIMMS STUFF OUTSIDE OF THE CURRENT CODE BLOCK
	use ("folke/twilight.nvim")
	-- twilight

	-- LIVE SERVER
	use('barrett-ruth/live-server.nvim')
	-- LIVE SERVER

	-- MARKDOWN PREVIEWER
	use({
		"iamcco/markdown-preview.nvim",
		run = function() vim.fn["mkdp#util#install"]() end,
	})
	-- MARKDOWN PREVIEWER

	-- IMAGE VIEWER
	use("vhyrro/luarocks.nvim")
	use({
		"3rd/image.nvim",
		require = "vhyrro/luarocks.nvim",
	})
	-- IMAGE VIEWER

	-- RESIZING WINDOWS MORE INTUITIVELY
	use("chaoren/vim-resizewindow")
	-- RESIZING WINDOWS MORE INTUITIVELY

	-- SWAPPING WINDOWS MORE INTUITIVELY
	-- INFO: OLD PLUGIN THAT I DONT LIKE XD
	-- use("sindrets/winshift.nvim")
	use("wesQ3/vim-windowswap")
	-- SWAPPING WINDOWS MORE INTUITIVELY

	if packer_bootstrap then
		require("packer").sync()
	end
end)



