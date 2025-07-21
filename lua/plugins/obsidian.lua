return {
	"obsidian-nvim/obsidian.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	opts = {
		legacy_commands = false,
		workspaces = {
			{
				path = "~/Notes",
			},
		},
		ui = {
			enable = false,
		},
	},
	-- keys = {
	-- 	{
	-- 		"<leader>O",
	-- 		"<cmd>Obsidian<cr>",
	-- 	},
	-- },
}
