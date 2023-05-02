local telescope = require("telescope")
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader>ps", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set("n", "<leader>ph", builtin.help_tags, {})

-- Load telescope file browser
telescope.load_extension("file_browser")

-- open file_browser with the path of the current buffer
vim.api.nvim_set_keymap(
	"n",
	"<space>e",
	":Telescope file_browser path=%:p:h select_buffer=true<CR>jj",
	{ noremap = true }
)
