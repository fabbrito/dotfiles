local prefix = "gz"
return {
  colorscheme = "catppuccin",
  plugins = {
    "AstroNvim/astrocommunity",
    { import = "astrocommunity.pack.lua" },
    { import = "astrocommunity.pack.python" },
    { import = "astrocommunity.pack.rust" },
    { import = "astrocommunity.pack.typescript" },
    { import = "astrocommunity.pack.bash" },
    { import = "astrocommunity.pack.markdown" },
    { import = "astrocommunity.pack.json" },
    { import = "astrocommunity.pack.prisma" },
    { import = "astrocommunity.pack.toml" },
    { import = "astrocommunity.diagnostics.trouble-nvim" },
    { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
    { import = "astrocommunity.bars-and-lines.heirline-mode-text-statusline" },
    -- { import = "astrocommunity.diagnostics.lsp_lines-nvim" },

    -- Colorscheme
    {
      "catppuccin/nvim",
      name = "catppuccin",
      as = "catppuccin",
      opts = {
        integrations = {
          nvimtree = false,
          ts_rainbow = false,
          aerial = true,
          dap = { enabled = true, enable_ui = true },
          mason = true,
          neotree = true,
          notify = true,
          semantic_tokens = true,
          symbols_outline = true,
          telescope = true,
          which_key = true,
          sandwich = false,
          noice = true,
          mini = true,
          leap = true,
          markdown = true,
          neotest = true,
          cmp = true,
          overseer = true,
          lsp_trouble = true,
          ts_rainbow2 = true,
        },
      },
    },

    -- Override configs
    {
      "m4xshen/smartcolumn.nvim",
      opts = {
        colorcolumn = "120",
        disabled_filetypes = { "neo-tree", "lazy", "mason", "help", "alpha" },
      },
    },
    {
      "nvim-neo-tree/neo-tree.nvim",
      opts = {
        filesystem = {
          filtered_items = {
            visible = true,
            -- hide_dotfiles = false,
            -- hide_gitignored = false,
            hide_by_name = {
              ".DS_Store",
              "thumbs.db",
              "node_modules",
            },
          },
        },
      },
    },
    {
      "echasnovski/mini.move",
      version = "*",
      keys = {
        { "<A-l>", mode = { "n", "v" } },
        { "<A-k>", mode = { "n", "v" } },
        { "<A-j>", mode = { "n", "v" } },
        { "<A-h>", mode = { "n", "v" } },
      },
      opts = {
        mappings = {
          left = "<A-h>",
          right = "<A-l>",
          down = "<A-j>",
          up = "<A-k>",
          line_left = "<A-h>",
          line_right = "<A-l>",
          line_down = "<A-j>",
          line_up = "<A-k>",
        },
      },
      config = function(_, opts) require("mini.move").setup(opts) end,
    },
    {
      "echasnovski/mini.ai",
      version = "*",
      event = "User AstroFile",
      opts = {},
      config = function(_, opts) require("mini.ai").setup(opts) end,
    },
    { "machakann/vim-sandwich", enabled = false },
    {
      "echasnovski/mini.surround",
      keys = {
        { prefix, desc = "Surround" },
      },
      opts = {
        mappings = {
          add = prefix .. "a", -- Add surrounding in Normal and Visual modes
          delete = prefix .. "d", -- Delete surrounding
          find = prefix .. "f", -- Find surrounding (to the right)
          find_left = prefix .. "F", -- Find surrounding (to the left)
          highlight = prefix .. "h", -- Highlight surrounding
          replace = prefix .. "r", -- Replace surrounding
          update_n_lines = prefix .. "n", -- Update `n_lines`
        },
      },
      config = function(_, opts) require("mini.surround").setup(opts) end,
    },
  },
}
