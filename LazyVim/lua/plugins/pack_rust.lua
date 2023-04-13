local utils = require("plugins.utils.utils")
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- ensure that opts.ensure_installed exists and is a table.
      if not opts.ensure_installed then
        opts.ensure_installed = {}
      elseif opts.ensure_installed == "all" then
        return
      end
      utils.list_insert_unique(opts.ensure_installed, { "rust", "toml" })
    end,
  },
  {
    "simrat39/rust-tools.nvim",
    ft = { "rust" },
    -- init = function() utils.list_insert_unique(astronvim.lsp.skip_setup, "rust_analyzer") end,
    opts = function()
      local package_path = require("mason-registry").get_package("codelldb"):get_install_path()
      local codelldb_path = package_path .. "/codelldb"
      local liblldb_path = package_path .. "/extension/lldb/lib/liblldb"

      return {
        server = {
          settings = {
            ["rust-analyzer"] = {
              diagnostics = {
                enable = false,
              },
            },
          },
        },
        dap = {
          adapter = require("rust-tools.dap").get_codelldb_adapter(
            codelldb_path,
            liblldb_path .. (vim.loop.os_uname().sysname == "Linux" and ".so" or ".dylib")
          ),
        },
      }
    end,
    dependencies = {
      {
        "jay-babu/mason-nvim-dap.nvim",
        opts = function(_, opts)
          -- ensure that opts.ensure_installed exists and is a table.
          if not opts.ensure_installed then
            opts.ensure_installed = {}
          end
          utils.list_insert_unique(opts.ensure_installed, { "codelldb" })
        end,
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      -- Ensure that opts.ensure_installed exists and is a table.
      if not opts.ensure_installed then
        opts.ensure_installed = {}
      end
      utils.list_insert_unique(opts.ensure_installed, { "rust-analyzer" })
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      -- Ensure that opts.ensure_installed exists and is a table.
      if not opts.ensure_installed then
        opts.ensure_installed = {}
      end
      utils.list_insert_unique(opts.ensure_installed, { "rust_analyzer" })
    end,
  },
  {
    "Saecki/crates.nvim",
    init = function()
      vim.api.nvim_create_autocmd("BufRead", {
        group = vim.api.nvim_create_augroup("CmpSourceCargo", { clear = true }),
        pattern = "Cargo.toml",
        callback = function()
          require("cmp").setup.buffer({ sources = { { name = "crates" } } })
          require("crates")
        end,
      })
    end,
    opts = {
      null_ls = {
        enabled = true,
        name = "crates.nvim",
      },
    },
  },
}
