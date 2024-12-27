return {
	"mbbill/undotree",
	config = function()
		if vim.fn.has("win32") then
			vim.g.undotree_DiffCommand = "FC" -- required for windows machine
		end

		if vim.fn.has("macunix") then
			vim.g.undotree_DiffCommand = "diff"
		end

		vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Undotree Toggle" })
	end,
}
