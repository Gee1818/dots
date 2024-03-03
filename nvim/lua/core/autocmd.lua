-- Highlight on yank
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})
-- The following two autocommands are used to highlight references of the
-- word under your cursor when your cursor rests there for a little while.
-- When you move your cursor, the highlights will be cleared (the second autocommand).
-- local client = vim.lsp.get_client_by_id(event.data.client_id)
-- if client and client.server_capabilities.documentHighlightProvider then
--   vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
--     buffer = event.buf,
--     callback = vim.lsp.buf.document_highlight,
--   })

--   vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
--     buffer = event.buf,
--     callback = vim.lsp.buf.clear_references,
--   })
-- end
