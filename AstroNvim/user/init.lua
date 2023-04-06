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
		{ import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
		-- {
		-- 	"m4xshen/smartcolumn.nvim",
		-- 	opts = {
		-- 		colorcolumn = "80",
		-- 		disabled_filetypes = { "neo-tree", "lazy", "mason", "help" },
		-- 	},
		-- },
	},
}
