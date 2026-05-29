return {
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false,            -- load immediately
    priority = 1000,         -- load before other plugins
    config = function()
      -- Setup GitHub theme
      require("github-theme").setup({
        options = {
          --theme_style = "dark_dimmed",  -- available: "dark", "dimmed", "light"
          transparent = fales,     -- keep focused window opaque
        }
      })

      -- Apply colorscheme
      vim.cmd("colorscheme github_dark_default")
   end,
  },
}

