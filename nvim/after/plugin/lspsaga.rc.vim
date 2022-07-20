lua << EOF
local saga = require 'lspsaga'

saga.init_lsp_saga()

vim.keymap.set("n", "gp", "<cmd>Lspsaga preview_definition<CR>", { silent = true })
