return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"echasnovski/mini.icons",
		"obsidian-nvim/obsidian.nvim",
	},
	---@module 'render-markdown'
	---@type render.md.UserConfig
	opts = {
		heading = {
			enabled = false,
		},
		checkbox = {
			custom = {
				right_arrow = {
					raw = "[>]",
					rendered = " ",
					highlight = "ObsidianRightArrow",
				},
				tilde = { raw = "[~]", rendered = "󰰱 ", highlight = "ObsidianTilde" },
				important = { raw = "[!]", rendered = " ", highlight = "ObsidianImportant" },
			},
		},
	},
}
