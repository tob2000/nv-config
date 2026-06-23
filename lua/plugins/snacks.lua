 return {
  {
  "folke/snacks.nvim",
  opts = {
  picker = {
  win = {
  input = {
  keys = {
         -- tex Git Status
  ["<PageDown>"] = { "preview_scroll_down", mode = { "i", "n" } },
  ["<PageUp>"] = { "preview_scroll_up", mode = { "i", "n" } },
  },
  },
  list = {
  keys = {
         -- tex Git Status
  ["<PageDown>"] = "preview_scroll_down",
  ["<PageUp>"] = "preview_scroll_up",
  },
  },
  },
  },
  },
  },
 }
