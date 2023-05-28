vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


-- Couldn't manage to get this to work without slowness and "mark not set" err.
-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv'")
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv'")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- put without yankin'
vim.keymap.set("x", "<leader>p", "\"_dP")

-- del without yankin'
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Yank to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "Q", "<nop>")

-- for tmux
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

vim.keymap.set("n", "<leader>f", function()
	vim.lsp.buf.format()
end)

-- quickfix list navigation //TODO learn this
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")


vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/jacob/packer.lua<CR>")

vim.keymap.set("n", "<leader>mk", "<cmd>make!<CR>")