local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"git@github.com:folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("obvim.options")

require("lazy").setup({
	spec = {
		{ import = "plugins" },
	},
	-- git = {
	-- 	url_format = "git@github.com:%s",
	-- },
})
