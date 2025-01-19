return { -- NOTE: git commands
	"tpope/vim-fugitive",
	config = function()
		vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Toggle Git" })
	end,
}
