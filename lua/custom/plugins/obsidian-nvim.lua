return {
  "epwalsh/obsidian.nvim",
  enabled = require("nixCatsUtils").enableForCategory("obsidian-nvim"),
  version = "*",
  lazy = true,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- Optional.
    "nvim-telescope/telescope.nvim",
    "nvim-treesitter",
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/Documents/obsidian-vault/",
      },
      {
        name = "work",
        path = "~/Documents/obsidian-work-vault/",
      },
    },

    -- see this link for full list:
    -- https://github.com/epwalsh/obsidian.nvim?tab=readme-ov-file#configuration-options
  },
}
