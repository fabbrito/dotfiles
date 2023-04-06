return {
  plugins = {
    "AstroNvim/astrocommunity",
    { import = "astrocommunity.pack.lua" },
    { import = "astrocommunity.pack.python" },
    { import = "astrocommunity.pack.rust" },
    { import = "astrocommunity.pack.typescript" },
    { import = "astrocommunity.pack.bash" },
    { import = "astrocommunity.pack.markdown" },
    { import = "astrocommunity.bars-and-lines.heirline-mode-text-statusline" },
    { import = "astrocommunity.diagnostics.lsp_lines-nvim" },
    { import = "astrocommunity.diagnostics.trouble-nvim" },
    {
      "m4xshen/smartcolumn.nvim",
      ots = {
        colorcolumn = 120,
        disabled_filetypes = { "help" },
      },
    },
  },
}
