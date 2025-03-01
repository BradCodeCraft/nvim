return {
  "nvim-neo-tree/neo-tree.nvim",
  name = "neo-tree",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  cmd = "Neotree",
  keys = {
    { "<leader>e", ":Neotree toggle<CR>", desc = "NeoTree toggle", silent = true },
  },
  opts = {
    filesystem = {
      window = {
        position = "right",
        width = 30,
        mappings = {
          ["\\"] = "close_window",
        },
      },
    },
  },
}
