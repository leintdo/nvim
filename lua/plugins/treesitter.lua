return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufReadPost", "BufNewFile" },
	config = function()
		local ts = require("nvim-treesitter")

		ts.setup({
			-- Syntax Highlight
			highlight = { enable = true },
			-- Indent
			indent = { enable = true },
			-- Language parsers
			ensure_installed = {
				"lua",
				"javascript",
				"html",
				"css",
				"cpp",
				"c",
			},
		})
	end,
}
