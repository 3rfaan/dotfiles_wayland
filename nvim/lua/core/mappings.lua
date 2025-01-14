--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- Neovim Lua Config File by Arfan Zubi
-- MAPPINGS

-- Open new terminal
kmap.set("n", "<leader>t", ":split | terminal<cr>", { desc = "Open new terminal" })

-- Redo
kmap.set("n", "U", "<C-r>", { desc = "Redo" })

-- Split navigation using CTRL + {j, k, h, l}
kmap.set("n", "<c-k>", "<c-w>k", { desc = "Split window up" })
kmap.set("n", "<c-j>", "<c-w>j", { desc = "Split window down" })
kmap.set("n", "<c-l>", "<c-w>l", { desc = "Split window right" })
kmap.set("n", "<c-h>", "<c-w>h", { desc = "Split window left" })

-- Resize split windows using arrow keys
kmap.set("n", "<c-up>", "<c-w>-", { desc = "Resize split window up" })
kmap.set("n", "<c-down>", "<c-w>+", { desc = "Resize split window down" })
kmap.set("n", "<c-right>", "<c-w>>", { desc = "Resize split window right" })
kmap.set("n", "<c-left>", "<c-w><", { desc = "Resize split window left" })

-- NerdTree
kmap.set("n", "<leader>nt", vim.cmd.NvimTreeToggle, { desc = "Toggle NerdTree" })

-- Undo Tree
kmap.set("n", "<leader>ut", vim.cmd.UndotreeToggle, { desc = "Toggle UndoTree" })

-- Telescope
local builtin = require("telescope.builtin")
local extensions = require("telescope").extensions

kmap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
kmap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
kmap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
kmap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
kmap.set("n", "<leader>fk", builtin.keymaps, { desc = "Telescope keymaps" })

kmap.set("n", "<leader>rf", extensions.recent_files.pick, { desc = "Telescope recent files" })
kmap.set("n", "<leader>fm", extensions.vim_bookmarks.all, { desc = "Telescope all bookmarks" })
kmap.set("n", "<leader>fm-", extensions.vim_bookmarks.current_file, { desc = "Telescope current file bookmarks" })
