-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- custom
--

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.cmd("vsplit")           -- skapa vertical split
    vim.cmd("wincmd l")         -- gå till höger fönster

    -- Tvinga fram ett vanligt tomt buffer istället för att trädet tar över
    vim.cmd("enew")

    vim.cmd("wincmd h")         -- gå tillbaka till vänster (huvudfönstret)
  end,
})

-- Endast vid musklick på terminal → auto insert
vim.api.nvim_create_autocmd("TermOpen", {
  callback = function()
    -- Mapping för musklick (LeftRelease funkar bättre än LeftMouse i terminal)
    vim.keymap.set("n", "<LeftRelease>", "<LeftRelease>i", { buffer = true, silent = true })
  end,
})

-- Extra säkerhet för redan öppna terminaler
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    if vim.bo.buftype == "terminal" then
      -- Detta triggas inte lika lätt vid ren keyboard navigation
      vim.defer_fn(function()
        if vim.bo.buftype == "terminal" then
          vim.cmd("startinsert")
        end
      end, 10)  -- liten delay för att undvika falska triggers
    end
  end,
})


