return {
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false,            -- load immediately
    priority = 1000,         -- load before other plugins
    enabled = true,
    config = function()
      -- Setup GitHub theme
      require("github-theme").setup({
        options = {
          --theme_style = "dark_dimmed",  -- available: "dark", "dimmed", "light"
          transparent = fales,     -- keep focused window opaque
          styles = {                 -- Style to be applied to different syntax groups
            comments = 'italic',       -- Value is any valid attr-list value `:help attr-list`
            functions = 'NONE',
            keywords = 'NONE',
            variables = 'NONE',
            conditionals = 'NONE',
            constants = 'NONE',
            numbers = 'NONE',
            operators = 'NONE',
            strings = 'NONE',
            types = 'NONE',
        },
        }
      })
      -- Apply colorscheme
      vim.cmd("colorscheme github_dark_default")
   end,
  },
}

