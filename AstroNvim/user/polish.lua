local map = vim.keymap.set
return function()
  -- navigate within insert mode
  map("i", "<C-h>", "<Left>", { desc = "move left" })
  map("i", "<C-j>", "<Down>", { desc = "move down" })
  map("i", "<C-k>", "<Up>", { desc = "move up" })
  map("i", "<C-l>", "<Right>", { desc = "move right" })
end
