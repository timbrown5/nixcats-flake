return {
  -- Insert Mode
  -- Set 'jk' to Esc. This reduces the need to stretch. In othe modes it is a noop (down,up). 
  vim.keymap.set('i', 'jk', '<Esc>')
  
    
  -- Visual Mode
  -- Ctrl-r: easily search and replace selected text in document.
  vim.keymap.set("v", "<C-r>", "hy:%s/<C-r>h//gc<left><left><left>")

  -- Normal Mode
  -- gf - Goto File/(Goto) Follow link - this allows gf to work in obsidian-nvim even if remapped.
  vim.keymap.set("n", "gf", function()
  if require("obsidian").util.cursor_on_markdown_link() then
      return "<cmd>ObsidianFollowLink<CR>"
    else
      return "gf"
    end
  end, { noremap = false, expr = true })
}
