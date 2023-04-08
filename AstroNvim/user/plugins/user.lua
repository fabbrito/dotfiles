-- You can also add new plugins here as well:
-- Add plugins, the lazy syntax
local prefix = "gz"
return {
  {
    "m4xshen/smartcolumn.nvim",
    opts = {
      colorcolumn = "120",
      disabled_filetypes = { "neo-tree", "lazy", "mason", "help", "alpha" },
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
}
