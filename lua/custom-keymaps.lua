return {
  -- Ctrl-r: easily search and replace selected text in document.
  vim.keymap.set("v", "<C-r>", "hy:%s/<C-r>h//gc<left><left><left>"),
}
