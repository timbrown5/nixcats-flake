-- Folds config
-- use Treesitter
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
-- Keep syntax highlighting of folded line
vim.opt.foldtext = ""

-- How many levels deep should folder be available. After this the code will be folded as a block.
vim.opt.foldnestmax = 10
-- When a file starts, sections that are indented more than this will be folded.
vim.opt.foldlevelstart = 5

-- Add down arrow when section is folded.
vim.opt.fillchars:append({ fold = " " })

function myfoldtext()
  local line = vim.fn.getline(vim.v.foldstart)
  return line .. " ▾"
end

vim.o.foldtext = "v:lua.myfoldtext()"

local function close_all_folds()
  vim.api.nvim_exec2("%foldc!", { output = false })
end
local function open_all_folds()
  vim.api.nvim_exec2("%foldo!", { output = false })
end

vim.keymap.set("n", "<leader>zs", close_all_folds, { desc = "[s]hut all folds" })
vim.keymap.set("n", "<leader>zo", open_all_folds, { desc = "[o]pen all folds" })
