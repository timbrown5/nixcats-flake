return {
  {
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    "catppuccin/nvim",
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      require("catppuccin").setup({
        styles = {
          comments = { "italic" },
          conditional = { "italic" },
          keywords = { "italic" },
        },
      })

      -- Load the colorscheme here.
      vim.cmd.colorscheme("catppuccin-macchiato")
    end,
  },
}
