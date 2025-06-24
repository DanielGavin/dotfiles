-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local set = vim.keymap.set

set("n", "<leader><leader>x", "<cmd>source %<CR>", { desc = "Execute the current file" })

set("n", "<leader>pv", vim.cmd.Ex)

set("v", "J", ":m '>+1<CR>gv=gv")
set("v", "K", ":m '<-2<CR>gv=gv")

set("n", "J", "mzJ`z")

set("n", "<C-d>", "<C-d>zz")
set("n", "<C-u>", "<C-u>zz")

set("x", "<leader>p", "\"_dP")

-- controlling splits 
set("n", "ss", ":split<Return><C-w>w")
set("n", "sv", ":vsplit<Return><C-w>w")
set("n", "sh", "<C-w>h")
set("n", "sk", "<C-w>k")
set("n", "sj", "<C-w>j")
set("n", "sl", "<C-w>l")
set("n", "<M-,>", "<c-w>5<")
set("n", "<M-.>", "<c-w>5>")
set("n", "<M-t>", "<C-W>+")
set("n", "<M-s>", "<C-W>-")

-- Telescope
local builtin = require('telescope.builtin')
set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
set('n', '<leader>fs', builtin.lsp_document_symbols, { desc = 'document symbols' })
set('n', '<leader>fS', builtin.lsp_workspace_symbols, { desc = 'workspace symbols' })
set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })

-- Perforce 
set("n", "<leader>p4a", ":P4Add<CR>", { noremap = true, silent = true })
set("n", "<leader>p4e", ":P4Checkout<CR>", { noremap = true, silent = true })
set("n", "<leader>p4t", ":P4CheckedInTelescope<CR>", { noremap = true, silent = true })

-- Terminal
local job_id = 0

set("n", "<leader>st", function ()
    vim.cmd.vnew()
    vim.cmd.term()
    vim.cmd.wincmd("J")
    vim.api.nvim_win_set_height(0, 5)
    job_id = vim.bo.channel;
end)

-- Diagnostics


-- LSP
set("n", "<space>tt", function()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled { bufnr = 0 }, { bufnr = 0 })
end)
