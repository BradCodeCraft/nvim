return {
	"mbbill/undotree",
	config = function()
		vim.g.undotree_DiffCommand = "FC" -- required for windows machine
		vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
	end,
}
