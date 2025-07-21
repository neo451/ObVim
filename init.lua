require("obvim.config")

local set = vim.keymap.set

set("n", "<leader>O", "<cmd>Obsidian<cr>")
set("n", "<leader>os", "<cmd>Obsidian quick_switch<cr>")
set("n", "-", "<cmd>Oil<cr>")
set("n", "<leader>fc", function()
	Snacks.picker.files({ cwd = "~/ObVim/" })
end)

vim.cmd.colorscheme("obsidian")
