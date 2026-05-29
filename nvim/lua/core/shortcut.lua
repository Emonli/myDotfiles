-- undo with ctrl+z
vim.keymap.set({"n", "i"}, "<C-z>", "<Cmd>undo<CR>", {silent = true})

-- swtich realative line number with ctrl+n
vim.keymap.set({"n", "i"}, "<A-n>", function()
  if vim.wo.relativenumber then
    vim.wo.relativenumber = false
    print("relativenumber: off")
  else
    vim.wo.relativenumber = true
    print("relativenumber: on")
  end
end, { desc = "Toggle relative number" })

-- switch windows in nvim
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Alt + t toggle nvim-tree
vim.keymap.set({ "n", "i" }, '<A-t>', function()
    require("nvim-tree.api").tree.toggle()
end, { noremap = true, silent = true })

