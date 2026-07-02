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

        -- Anpassa layout för git_status: höger panel (preview) = 70% av bredden
        -- (vänster = fil-listan, höger = diff-preview)
        sources = {
          git_status = {
            layout = {
              layout = {
                box = "horizontal",
                width = 0.8,
                min_width = 120,
                height = 0.8,
                {
                  box = "vertical",
                  border = true,
                  title = "{title} {live} {flags}",
                  { win = "input", height = 1, border = "bottom" },
                  { win = "list", border = "none" },
                },
                { win = "preview", title = "{preview}", border = true, width = 0.70 },
              },
            },
          },
        },
      },
    },
  },
}
