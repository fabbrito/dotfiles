local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "bash",
    "rust",
    "python",
  },
  indent = {
    enable = true,
    disable = {
      "python",
    },
  },
  auto_install = true,
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<c-space>",
      node_incremental = "<c-space>",
      scope_incremental = "<c-s>",
      node_decremental = "<M-space>",
    },
  },
}

M.mason = {
  ensure_installed = {
    -- bash stuff
    "bash-language-server",
    "shfmt",

    -- rust stuff
    "rust-analyzer",
    "codelldb",
    -- "rustfmt",

    -- python stuff
    "pyright",
    -- "pylint",

    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "tailwindcss-language-server",
    "deno",
    "prettier",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

-- change sign for delete in gitsigns
M.gitsigns = {
  signs = {
    delete = { hl = "DiffDelete", text = "-", numhl = "GitSignsDeleteNr" },
  },
}

return M
