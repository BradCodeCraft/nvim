return {
  "mbbill/undotree",
  config = function()
    -- TODO: make sure undotree works in Windows

    vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
    vim.g.undotree_WindowLayout = 3;
    vim.g.undotree_SplitWidth = 30;
  end
}
