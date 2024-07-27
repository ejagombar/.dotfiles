return { -- Autoformat
	"stevearc/conform.nvim",
	lazy = false,
	keys = {
		{
			"<leader>ff",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			mode = "",
		},
	},
	opts = {
		notify_on_error = false,
		format_on_save = function(bufnr)
			-- Disable "format_on_save lsp_fallback" for languages that don't
			-- have a well standardized coding style. You can add additional
			-- languages here or re-enable it for the disabled ones.
			local disable_filetypes = {} --{ c = true, cpp = true }
			return {
				timeout_ms = 500,
				lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
			}
		end,
		formatters_by_ft = {
			lua = { "stylua" },
			-- Conform can also run multiple formatters sequentially
			python = { "isort", "black" },
			cpp = { "clang-format" },
			--
			-- You can use a sub-list to tell conform to run *until* a formatter
			-- is found.
			javascript = { { "prettierd", "prettier" } },
		},
	},
	-- config = function()
	-- 	require("conform").formatters.clang = {
 --            inherit=true,
	-- 		prepend_args= {    "--style=\"{ColumnLimit: 0, IndentWidth: 4}\"" },
	-- 	}
	-- end,
}
