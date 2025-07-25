return {
    'ngemily/vim-vp4',
	config = function()
		local set = vim.keymap.set

		vim.g.vp4_open_on_write = true
		vim.g.vp4_prompt_on_write = true

		set("n", "<leader>p4a", ":Vp4Add<CR>", { noremap = true, silent = true })
		set("n", "<leader>p4r", ":Vp4Revert<CR>", { noremap = true, silent = true })
	end,
}
