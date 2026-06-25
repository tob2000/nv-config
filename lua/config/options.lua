-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

-- vim.opt.mouse = "a"
-- vim.cmd([[aunmenu PopUp]])
--


-- högerklick i visual mode = kopiera

-- copy vid markering + h├╢gerklick
-- vim.keymap.set("v", "<RightMouse>", function()
-- vim.cmd('normal! "+y')
-- end, { silent = true })

-- högerklick utan markera
-- vim.keymap.set("n", "<RightMouse>", '"+yiw', { silent = true })

vim.keymap.set("v", "<LeftRelease>", function()
vim.cmd('normal! "+y')
end, { silent = true })
