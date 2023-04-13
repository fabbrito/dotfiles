local utils = require("plugins.utils.utils")
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- Ensure that opts.ensure_installed exists and is a table or string "all".
      if not opts.ensure_installed then
        opts.ensure_installed = {}
      elseif opts.ensure_installed == "all" then
        return
      end
      utils.list_insert_unique(opts.ensure_installed, { "bash" })
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      if not opts.ensure_installed then
        opts.ensure_installed = {}
      end
      utils.list_insert_unique(opts.ensure_installed, { "bash-language-server" })
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      if not opts.ensure_installed then
        opts.ensure_installed = {}
      end
      utils.list_insert_unique(opts.ensure_installed, { "bashls" })
    end,
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = function(_, opts)
      -- Ensure that opts.ensure_installed exists and is a table
      if not opts.ensure_installed then
        opts.ensure_installed = {}
      end
      utils.list_insert_unique(opts.ensure_installed, { "shellcheck", "shfmt" })
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = function(_, opts)
      -- Ensure that opts.ensure_installed exists and is a table
      if not opts.ensure_installed then
        opts.ensure_installed = {}
      end
      utils.list_insert_unique(opts.ensure_installed, { "bash" })
    end,
  },
}
