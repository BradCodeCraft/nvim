--- Set MapLeader to <space>
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Explore" })

-- Navigate split windows
vim.keymap.set("n", "<C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", { desc = "Move focus to the upper window" })
