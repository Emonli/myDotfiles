return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    enabled = false,
    opts = {
      style = "night", -- night / storm / moon / day
      transparent = false,
      terminal_colors = true,
      styles = {
        comments = { italic = false },
        keywords = { italic = true },
        functions = {},
        variables = {},
      },
      sidebars = { "qf", "help", "terminal", "packer" },
      dim_inactive = false,
    },
    config = function()
      vim.cmd("colorscheme tokyonight-night")
    end,
  },
}

