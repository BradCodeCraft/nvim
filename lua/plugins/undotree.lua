return {
	"mbbill/undotree",
	config = function()
		vim.g.undotree_DiffCommand = "diff"

		-- NOTE: Fixes undotree on Windows machines
		if vim.loop.os_uname().sysname == "Windows_NT" then
			vim.g.undotree_DiffCommand = "FC"
		end

		vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Undotree Toggle" })
	end,
}
