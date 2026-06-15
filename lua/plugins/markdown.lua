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
}