-- Global keybindings
local map = vim.keymap.set

-- Clear search with <esc>
map("n", "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

-- Better window navigation
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- Move Lines
map("n", "<A-j>", "<cmd>m .+1<cr>==Options", { desc = "Move down" })
map("n", "<A-k>", "<cmd>m .-2<cr>==Options", { desc = "Move up" })
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
map("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- Buffers / Tabs (bufferline handles the UI, these are the actions)
-- Buffers / Tabs
map("n", "<leader><Left>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
map("n", "<leader><Right>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
map("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
map("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
map("n", "[b", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
map("n", "]b", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })

-- Go back to last previous (Jumps)
map("n", "<C-o>", "<C-o>", { desc = "Go back to previous location" })
map("n", "<C-i>", "<C-i>", { desc = "Go forward to next location" })

-- Collapse/Expand block (folds)
map("n", "za", "za", { desc = "Toggle fold" })
map("n", "zR", "zR", { desc = "Open all folds" })
map("n", "zM", "zM", { desc = "Close all folds" })

-- Save file
map({ "i", "x", "n", "s" }, "<D-s>", "<cmd>w<cr><esc>", { desc = "Save file" })
map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- Close buffer
map("n", "<leader>w", "<cmd>bd<cr>", { desc = "Close Buffer" })
map("n", "<D-w>", "<cmd>bd<cr>", { desc = "Close Buffer" })

-- New Tab/Buffer
map("n", "<leader>t", "<cmd>enew<cr>", { desc = "New Buffer" })

-- Quick Open
map("n", "<leader>fp", "<cmd>Telescope find_files<cr>", { desc = "Find Files" })
map("n", "<C-p>", "<cmd>Telescope find_files<cr>", { desc = "Find Files" })

-- Toggle Sidebar
map("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Toggle Explorer" })
map("n", "<C-n>", "<cmd>Neotree toggle<cr>", { desc = "Toggle Explorer" })

-- Global Find
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Global Search" })

-- Git
map("n", "<leader>gg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })

-- Terminal
-- map("t", "<esc><esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
