return {
	"stevearc/oil.nvim",
	config = function()
		require("oil").setup({
			columns = {
				"icon",
				-- "permissions",
				-- "size",
				-- "mtime",
			},
			view_options = {
				-- Show files and directories that start with "."
				show_hidden = true,
			},

			float = {
				padding = 1,
				max_width = 60,
				max_height = 16,
				border = "rounded",
				win_options = {
					winblend = 0,
				},
				override = function(conf)
					return conf
				end,
			},

			preview = {
				max_width = 100,
				min_width = { 40, 0.4 },
				max_height = 0.9,
				min_height = { 5, 0.1 },
				border = "rounded",
				win_options = {
					winblend = 0,
				},
			},
		})
		vim.keymap.set("n", "<leader>pe", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })
	end,
}
