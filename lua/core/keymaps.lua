vim.keymap.set("n", "<leader>q", ":wqa<CR>", { desc = "Quit" })
vim.keymap.set("n", "<leader>w", ":w<cr>", { silent = true, desc = "Save File" })
vim.keymap.set("n", "<leader>W", ":wa<cr>", { silent = true, desc = "Save All Files" })

vim.keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move line down", silent = true })
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move line up", silent = true })
vim.keymap.set("x", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move line down", silent = true })
vim.keymap.set("x", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move line up", silent = true })

vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode", silent = true })
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode", silent = true })

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Switch to left window", silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Switch to right window", silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Switch to below window", silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Switch to above window", silent = true })

vim.keymap.set("n", "<leader>[", "<cmd>tabprevious<cr>", { desc = "Previous tab", silent = true })
vim.keymap.set("n", "<leader>]", "<cmd>tabnext<cr>", { desc = "Next tab", silent = true })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center", silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center", silent = true })
