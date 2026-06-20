return {
  {
    "nvim-java/nvim-java",
    config = false,
    dependencies = {
      {
        "neovim/nvim-lspconfig",
        opts = {
          servers = {
            jdtls = {
              settings = {
                java = {
                  format = {
                    enabled = false, -- stänger av formattering
                  },
                },
              },
            },
          },
          setup = {
            jdtls = function()
              require("java").setup()
            end,
          },
        },
      },
    },
  },

  {
    "mfussenegger/nvim-dap",
    optional = true,
    config = function()
      local dap = require("dap")

      dap.configurations.java = dap.configurations.java or {}

      table.insert(dap.configurations.java, {
        type = "java",
        request = "attach",
        name = "Attach to localhost:8000",
        hostName = "127.0.0.1",
        port = 8000,
      })
    end,
  },
}
