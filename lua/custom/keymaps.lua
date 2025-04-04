return {
  -- Insert Mode
  -- Set 'jk' to Esc. This reduces the need to stretch. In othe modes it is a noop (down,up). 
  vim.keymap.set('i', 'jk', '<Esc>')
  
    
  -- Visual Mode
  -- Ctrl-r: easily search and replace selected text in document.
  vim.keymap.set("v", "<C-r>", "hy:%s/<C-r>h//gc<left><left><left>")
}
