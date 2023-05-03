local keymap = vim.keymap

keymap.set("n", "x", '"_x')

-- Quick save
keymap.set("n", "<space>w", ":w<cr>")

-- Clear highlights
keymap.set("n", "<space>h", ":noh<cr>")

-- Exit INSERT mode
keymap.set("i", "jj", "<esc>")

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')
keymap.set("i", "dw", "<C-w>")

-- Highlight whole function
keymap.set("n", "df", "V$%")

-- Highlight body function
keymap.set("n", "db", "v%")
-- Delete a line without registering
keymap.set("n", "D", '"_dd')

-- Yank to clipboard
keymap.set("v", "y", ":y+<CR>")

-- Go to beginning/end of line
keymap.set("n", "E", "$")
keymap.set("n", "B", "0")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- New tab
keymap.set("n", "te", ":tabedit")

-- Close tab
keymap.set("n", "<space>c", ":q<cr>")

-- Split window
keymap.set("n", "ss", ":split<Return><C-w>w")
keymap.set("n", "sv", ":vsplit<Return><C-w>w")

-- Move window
keymap.set("n", "<Space>", "<C-w>w")
keymap.set("", "sh", "<C-w>h")
keymap.set("", "sk", "<C-w>k")
keymap.set("", "sj", "<C-w>j")
keymap.set("", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Telescope
keymap.set("n", "<space>ff", ":Telescope find_files<cr>")
keymap.set("n", "<space>fs", ":Telescope live_grep<cr>")
