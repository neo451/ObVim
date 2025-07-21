return {
	"stevearc/conform.nvim",
	opts = {
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
		formatters_by_ft = {
			lua = { "stylua" },
			markdown = { "prettier", "injected" },
			json = { "jq" }, -- for cache file if user wants to see it.
		},
	},
}
