--Copilot
return {
	-- https://github.com/github/copilot.vim
	"github/copilot.vim",
	event = "VeryLazy",
	config = function()
		vim.cmd([[imap <silent><script><expr> <C-Space> copilot#Accept("\<CR>")]])
		vim.g.copilot_no_tab_map = true
		vim.g.copilot_enabled = true
	end,
}
