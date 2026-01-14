vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "|", ":vsplit<CR>", { desc = "Split window vertically" })
keymap.set("n", "\\", ":split<CR>", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")
keymap.set("n", "<s-Tab>", ":BufferLineCyclePrev<CR>")
keymap.set("n", "<leader>x", ":BufferLinePickClose<CR>")
keymap.set("n", "<c-x>", ":BufferLineCloseOthers<CR>")

keymap.set("n", "<leader>s", ':w<CR>', {desc = "Save file"})
