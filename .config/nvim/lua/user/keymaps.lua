--Remap space as leader key --
vim.keymap.set("", "<Space>", "<Nop>", opts)
vim.g.mapleader=" "

-- Normal (Command Mode) Mode --
-- Better window navigation --
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)
-- open up file explorer on the left hand side --
vim.keymap.set("n", "<leader>e", ":Lex 30<CR>", opts)

-- Insert Mode --
-- Move to Command Mode without pressing escape --
vim.keymap.set("i", "kj", "<ESC>", opts)

-- for LSP
local server_maps = function(bufopts)
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
  end
