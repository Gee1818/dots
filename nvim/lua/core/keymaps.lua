-- Set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap

-- General keymaps
keymap.set("i", "jk", "<ESC>") -- exit insert mode with jk
keymap.set("i", "ii", "<ESC>") -- exit insert mode with ii
keymap.set("n", "<leader>wq", ":wq<CR>", { desc = "Save and quit" })
keymap.set("n", "<leader>qq", ":q!<CR>", { desc = "Quit without saving" })
keymap.set("n", "<leader>ww", ":w<CR>", { desc = "Save" })
keymap.set("n", "gx", ":!open <c-r><c-a><CR>", { desc = "Open URL" })
keymap.set("n", "<C-d>", "<C-d>zz") -- Move half a page and center curson on screen
keymap.set("n", "<C-u>", "<C-u>zz") -- Move half a page and center curson on screen
keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Move a block of text 1 line down
keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- Move a block of text 2 lines up
keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Copy to the system register" })
keymap.set("t", "jk", "<C-\\><C-N>")

-- Diagnostic keymaps
keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })

-- Disable arrow keys in normal mode
keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- Split window management
keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>we", "<C-w>=", { desc = "Split windows equal width" })
keymap.set("n", "<leader>wx", ":close<CR>", { desc = "Close split window" })
keymap.set("n", "<leader>wj", "<C-w>-", { desc = "Split window height shorter" })
keymap.set("n", "<leader>wk", "<C-w>+", { desc = "Split windows height taller" })
keymap.set("n", "<leader>wl", "<C-w>>5", { desc = "Split windows width bigger" })
keymap.set("n", "<leader>wh", "<C-w><5", { desc = "Split windows width smaller" })

-- Keybinds to make split navigation easier.
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move focus to the left window" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move focus to the right window" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move focus to the lower window" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move focus to the upper window" })

-- Set highlight on search, but clear on pressing <Esc> in normal mode
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Telescope
keymap.set("n", "<leader>sh", require("telescope.builtin").help_tags, { desc = "[S]earch [H]elp" })
keymap.set("n", "<leader>sk", require("telescope.builtin").keymaps, { desc = "[S]earch [K]eymaps" })
keymap.set("n", "<leader>sf", require("telescope.builtin").find_files, { desc = "[S]earch [F]iles" })
keymap.set("n", "<leader>ss", require("telescope.builtin").builtin, { desc = "[S]earch [S]elect Telescope" })
keymap.set("n", "<leader>sw", require("telescope.builtin").grep_string, { desc = "[S]earch current [W]ord" })
keymap.set("n", "<leader>sg", require("telescope.builtin").live_grep, { desc = "[S]earch by [G]rep" })
keymap.set("n", "<leader>sd", require("telescope.builtin").diagnostics, { desc = "[S]earch [D]iagnostics" })
keymap.set("n", "<leader>sr", require("telescope.builtin").resume, { desc = "[S]earch [R]esume" })
keymap.set(
	"n",
	"<leader>s.",
	require("telescope.builtin").oldfiles,
	{ desc = '[S]earch Recent Files ("." for repeat)' }
)
keymap.set("n", "<leader><leader>", require("telescope.builtin").buffers, { desc = "[ ] Find existing buffers" })

keymap.set("n", "<leader>/", function()
	-- You can pass additional configuration to telescope to change theme, layout, etc.
	require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
		winblend = 10,
		previewer = false,
	}))
end, { desc = "[/] Fuzzily search in current buffer" })

--Harpoon
--local harpoon = require("harpoon")

-- REQUIRED
--harpoon:setup()
-- REQUIRED

--keymap.set('n', '<leader>ha', ':lua require('harpoon'):list():append()<cr>', { desc = 'Harpoon list' })
--keymap.set('n', '<leader>hh', ':lua require('harpoon').ui:toggle_quick_menu(require('harpoon'):list())<cr>', { desc = 'Harpoon UI' })
--keymap.set('n', '<leader>h1', ':lua require('harpoon'):list():select(1)<cr>', { desc = 'Harpoon 1' })
--keymap.set('n', '<leader>h2', ':lua require('harpoon'):list():select(2)<cr>', { desc = 'Harpoon 2' })
--keymap.set('n', '<leader>h3', ':lua require('harpoon'):list():select(3)<cr>', { desc = 'Harpoon 3' })
--keymap.set('n', '<leader>h4', ':lua require('harpoon'):list():select(4)<cr>', { desc = 'Harpoon 4' })
--keymap.set('n', '<leader>hp', ':lua require('harpoon'):list():previous()<cr>', { desc = 'Harpoon prev' })
--keymap.set('n', '<leader>hn', ':lua require('harpoon'):list():next()<cr>', { desc = 'Harpoon next' })

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- LSP

--  This is where a variable was first declared, or where a function is defined, etc.
keymap.set("n", "gd", require("telescope.builtin").lsp_definitions, { desc = "[G]oto [D]efinition" })

-- Find references for the word under your cursor.
keymap.set("n", "gr", require("telescope.builtin").lsp_references, { desc = "[G]oto [R]eferences" })

-- Jump to the implementation of the word under your cursor.
--  Useful when your language has ways of declaring types without an actual implementation.
keymap.set("n", "gI", require("telescope.builtin").lsp_implementations, { desc = "[G]oto [I]mplementation" })

-- Jump to the type of the word under your cursor.
--  Useful when you're not sure what type a variable is and you want to see
--  the definition of its *type*, not where it was *defined*.
keymap.set("n", "<leader>D", require("telescope.builtin").lsp_type_definitions, { desc = "Type [D]efinition" })

-- Fuzzy find all the symbols in your current document.
--  Symbols are things like variables, functions, types, etc.
keymap.set("n", "<leader>ds", require("telescope.builtin").lsp_document_symbols, { desc = "[D]ocument [S]ymbols" })

-- Fuzzy find all the symbols in your current workspace
--  Similar to document symbols, except searches over your whole project.
keymap.set(
	"n",
	"<leader>ws",
	require("telescope.builtin").lsp_dynamic_workspace_symbols,
	{ desc = "[W]orkspace [S]ymbols" }
)

-- Rename the variable under your cursor
--  Most Language Servers support renaming across files, etc.
keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "[R]e[n]ame" })

-- Execute a code action, usually your cursor needs to be on top of an error
-- or a suggestion from your LSP for this to activate.
keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ction" })

-- Opens a popup that displays documentation about the word under your cursor
keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover Documentation" })

-- Show the signature of the function you're currently completing.
keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, { desc = "Signature Documentation" })

-- WARN: This is not Goto Definition, this is Goto Declaration.
--  For example, in C this would take you to the header
keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "[G]oto [D]eclaration" })

-- Debugging
keymap.set("n", "<leader>bb", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", { desc = "Toggle breakpoint" })
keymap.set(
	"n",
	"<leader>bc",
	"<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>",
	{ desc = "" }
)
keymap.set(
	"n",
	"<leader>bl",
	"<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<cr>",
	{ desc = "" }
)
keymap.set("n", "<leader>br", "<cmd>lua require'dap'.clear_breakpoints()<cr>", { desc = "" })
keymap.set("n", "<leader>ba", "<cmd>Telescope dap list_breakpoints<cr>", { desc = "" })
keymap.set("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", { desc = "" })
keymap.set("n", "<leader>dj", "<cmd>lua require'dap'.step_over()<cr>", { desc = "" })
keymap.set("n", "<leader>dk", "<cmd>lua require'dap'.step_into()<cr>", { desc = "" })
keymap.set("n", "<leader>do", "<cmd>lua require'dap'.step_out()<cr>", { desc = "" })
keymap.set("n", "<leader>dd", function()
	require("dap").disconnect()
	require("dapui").close()
end, { desc = "" })
keymap.set("n", "<leader>dt", function()
	require("dap").terminate()
	require("dapui").close()
end, { desc = "" })
keymap.set("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", { desc = "" })
keymap.set("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", { desc = "" })
keymap.set("n", "<leader>di", function()
	require("dap.ui.widgets").hover()
end, { desc = "" })
keymap.set("n", "<leader>d?", function()
	local widgets = require("dap.ui.widgets")
	widgets.centered_float(widgets.scopes)
end, { desc = "" })
keymap.set("n", "<leader>df", "<cmd>Telescope dap frames<cr>", { desc = "" })
keymap.set("n", "<leader>dh", "<cmd>Telescope dap commands<cr>", { desc = "" })
keymap.set("n", "<leader>de", function()
	require("telescope.builtin").diagnostics({ default_text = ":E:" })
end, { desc = "" })

-- Quarto
keymap.set({ "n", "i" }, "<m-y>", "<esc>i```{python}<cr>```<esc>O", { desc = "[i]nsert code chunk" })
keymap.set({ "n", "i" }, "<m-r>", "<esc>i```{r}<cr>```<esc>O", { desc = "[i]nsert code chunk" })
keymap.set("n", "<leader>qp", require("quarto").quartoPreview, { desc = "[Q]uarto [P]review" })

-- Slime

vim.keymap.set({ "n", "i" }, "<m-cr>", function()
	vim.cmd([[ call slime#send_cell() ]])
end, { desc = "send code cell to terminal" })

-- Mini
keymap.set("n", "<leader>pv", ":lua MiniFiles.open()<CR>", { desc = "[P]roject [V]iew" })
