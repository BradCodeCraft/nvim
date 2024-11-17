return {
	"mbbill/undotree",
	config = function()
		if not vim.fn.has("macunix") then
			vim.g.undotree_DiffCommand = "FC" -- required for windows machine
		end
		vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Undotree Toggle" })
	end,
}
