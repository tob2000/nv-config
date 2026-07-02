return {
  { import = "lazyvim.plugins.extras.lang.markdown" },
  -- Disable markdownlint diagnostics (MD013, MD060, etc.)
  {
    "mfussenegger/nvim-lint",
    opts = function(_, opts)
      opts.linters_by_ft.markdown = {}
      opts.linters_by_ft["markdown.mdx"] = {}
      return opts
    end,
  },

  {
    "stevearc/conform.nvim",
    optional = true,
    opts = function(_, opts)
      for _, ft in ipairs({ "markdown", "markdown.mdx" }) do
        opts.formatters_by_ft[ft] = vim.tbl_filter(function(f)
          return f ~= "markdownlint-cli2"
        end, opts.formatters_by_ft[ft] or {})
      end
      return opts
    end,
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        marksman = { enabled = false },
      },
    },
  },

  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      anti_conceal = {
        enabled = true,
        disabled_modes = { "n", "c", "t", "v", "V", "\22" },
      },

      -- Window options that are set when the buffer is rendered.
      -- This is the best way to get soft-wrapping behavior.
      win_options = {
        conceallevel = { default = vim.o.conceallevel, rendered = 3 },
        concealcursor = { default = vim.o.concealcursor, rendered = "" },
        -- Wrapping settings (applied only in rendered mode)
        wrap = { default = false, rendered = true },
        linebreak = { default = false, rendered = true },
        breakindent = { default = false, rendered = true },
        -- Helps with alignment when soft-wrapping (empty string is often recommended)
        breakindentopt = { default = vim.o.breakindentopt, rendered = "" },
        -- Visual indicator for wrapped lines
        showbreak = { default = vim.o.showbreak, rendered = "↪ " },
      },

      -- Table specific settings.
      -- Note: render-markdown does not (yet) support wrapping *inside* individual
      -- columns for very long cells. The whole table row will soft-wrap when
      -- the line exceeds the window. See pipe_table docs + issue #616.
      pipe_table = {
        enabled = true,
        -- How cells are sized:
        --   'padded'  : pad to max column width (most common)
        --   'trimmed' : like padded but trims extra space
        --   'raw'     : minimal change to original text
        --   'overlay' : completely overlay (different look)
        cell = "padded",
        padding = 1,
        min_width = 8, -- minimum column width
        -- style = "normal", -- uncomment for a lighter look (disables some borders)
        -- preset = "round", -- or "double", "heavy"
      },
    },
  },
}
