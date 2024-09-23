return {
	'rmagatti/auto-session',
	lazy = false,
	cmds = {
		'SessionSave',
		'SessionRestore',
		'SessionClose',
		'SessionCloseAll',
		'SessionList',
		'SessionSearch',
	},
	keys = {
		{ '<leader>sd', '<cmd>AutoSession delete<cr>', { desc = 'Delete session' } },
		{ '<leader>se', '<cmd>SessionSearch<cr>', { desc = 'Search for a session' }},
		{ '<C-S>', '<cmd>SessionSave<cr>', { desc = 'Saves the current state as a session' }},
		{ '<C-M-s>', ':SessionSave ', { desc = 'Prompts user for a session name to save it' }},
	},
	opts = {
		enabled = true, -- Enables/disables auto creating, saving and restoring
		root_dir = vim.fn.getcwd(), -- Root dir where sessions will be stored
		auto_save = true, -- Enables/disables auto saving session on exit
		auto_restore = false, -- Enables/disables auto restoring session on start
		auto_create = true, -- Enables/disables auto creating new session files. Can take a function that should return true/false if a new session file should be created or not

		suppressed_dirs = nil, -- Suppress session restore/create in certain directories
		allowed_dirs = nil, -- Allow session restore/create in certain directories
		bypass_save_filetypes = nil, -- List of file types to bypass auto save when the only buffer open is one of the file types listed, useful to ignore dashboards

		auto_restore_last_session = false, -- On startup, loads the last saved session if session for cwd does not exist
		use_git_branch = true, -- Include git branch name in session name
		lazy_support = true, -- Automatically detect if Lazy.nvim is being used and wait until Lazy is done to make sure session is restored correctly. Does nothing if Lazy isn't being used. Can be disabled if a problem is suspected or for debugging
		close_unsupported_windows = true, -- Close windows that aren't backed by normal file before autosaving a session
		args_allow_single_directory = true, -- Follow normal sesion save/load logic if launched with a single directory as the only argument
		args_allow_files_auto_save = false, -- Allow saving a session even when launched with a file argument (or multiple files/dirs). It does not load any existing session first. While you can just set this to true, you probably want to set it to a function that decides when to save a session when launched with file args. See documentation for more detail
		continue_restore_on_error = true, -- Keep loading the session even if there's an error
		cwd_change_handling = false, -- Follow cwd changes, saving a session before change and restoring after
		log_level = "error", -- Sets the log level of the plugin (debug, info, warn, error).

		session_lens = {
			load_on_setup = true, -- Initialize on startup (requires Telescope)
			theme_conf = { -- Pass through for Telescope theme options
				-- layout_config = { -- As one example, can change width/height of picker
					--   width = 0.8,    -- percent of window
					--   height = 0.5,
					-- },
			},
			previewer = false, -- File preview for session picker

			mappings = {
				-- Mode can be a string or a table, e.g. {"i", "n"} for both insert and normal mode
				delete_session = { "i", "<C-D>" },
				alternate_session = { "i", "<C-S>" },
			},

			session_control = {
				control_dir = vim.fn.stdpath "data" .. "/auto_session/", -- Auto session control dir, for control files, like alternating between two sessions with session-lens
				control_filename = "session_control.json", -- File name of the session control file
			},
		},
	}
}
