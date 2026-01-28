return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		-- Utility
		bigfile = { enabled = true },
		scroll = { enabled = true },
		statuscolumn = { enabled = true },
		notifier = { enabled = true },
		-- Indent
		indent = { enabled = true },
		animate = {
			enabled = vim.fn.has("nvim-0.10") == 1,
			style = "out",
			easing = "linear",
			duration = {
				step = 20,
				total = 500,
			},
		},
		scope = {
			enabled = true,
			priority = 200,
			char = "│",
			underline = false,
			only_current = false,
			hl = "SnacksIndentScope",
		},
		chunk = {
			enabled = true,
			only_current = false,
			priority = 200,
			hl = "SnacksIndentChunk",
			char = {
				corner_top = "╭",
				corner_bottom = "╰",
				horizontal = "─",
				vertical = "│",
				arrow = ">",
			},
		},
		-- Dashboard
		dashboard = {
			enabled = true,
			sections = {
				{ section = "header" },
				{ icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
				{ icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
				{ icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
				{ section = "startup" },
			},
		},
		-- File Explorer (Config in picker)
		explorer = { enabled = true },
		-- Picker
		picker = {
			enabled = true,
			sources = {
				explorer = {
					git_status = true,
					git_status_open = false,
					auto_close = true,
					layout = "custom",
					layouts = {
						custom = {
							preview = "main",
							layout = {
								backdrop = false,
								width = 40,
								min_width = 40,
								height = 0,
								position = "left",
								border = "none",
								box = "vertical",
								{
									win = "input",
									height = 1,
									border = "solid",
									title = "{title} {live} {flags}",
									title_pos = "center",
								},
								{ win = "list", border = "none" },
								{ win = "preview", title = "{preview}", height = 0.4, border = "top" },
							},
						},
					},
				},
			},
			prompt = "  ",
			layout = "custom",
			layouts = {
				custom = {
					layout = {
						box = "horizontal",
						backdrop = true,
						width = 0.8,
						height = 0.9,
						{
							box = "vertical",
							{ win = "list", title = " Results ", title_pos = "center", border = "solid" },
							{
								win = "input",
								height = 1,
								border = "solid",
								title = "{title} {live} {flags}",
								title_pos = "center",
							},
						},
						{
							win = "preview",
							title = "{preview:Preview}",
							width = 0.45,
							border = "solid",
							title_pos = "center",
						},
					},
				},
			},
			matcher = { cwd_bonus = false, frequency = true },
			formatters = {
				file = {
					filename_first = true,
					filename_only = false,
					icon_width = 2,
				},
			},
		},
		lazygit = {
			configure = true,
			config = {
				os = { editPreset = "nvim-remote" },
				gui = {
					nerdFontsVersion = "3",
				},
			},
			win = {
				style = "lazygit",
			},
		},
	},
	keys = {
		-- Finder
		{
			"<leader>ff",
			function()
				Snacks.picker.files()
			end,
			desc = "Find Files",
		},
		{
			"<leader>fb",
			function()
				Snacks.picker.buffers()
			end,
			desc = "Find Buffers",
		},
		{
			"<leader>fc",
			function()
				Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
			end,
			desc = "Find Config File",
		},

		-- Searcher
		{
			"<leader>sw",
			function()
				Snacks.picker.lines()
			end,
			desc = "Search for words in current buffer",
		},
		{
			"<leader>sh",
			function()
				Snacks.picker.help()
			end,
			desc = "Search for help pages",
		},
		{
			"<leader>sg",
			function()
				Snacks.picker.grep()
			end,
			desc = "Search for words in all projects",
		},
		{
			"<leader>sk",
			function()
				Snacks.picker.keymaps()
			end,
			desc = "Search for keymaps",
		},

		-- Delete Buffer
		{
			"<leader>bd",
			function()
				Snacks.bufdelete()
			end,
			desc = "Delete the current buffer",
		},

		-- File Explorer
		{
			"<leader>e",
			function()
				Snacks.explorer()
			end,
			desc = "File Explorer",
		},

		-- Dashboard
		{
			"<leader><ESC>",
			function()
				Snacks.dashboard()
			end,
			desc = "Dashboard",
		},

		-- Git
		{
			"<leader>gg",
			function()
				Snacks.lazygit()
			end,
			desc = "Lazygit",
		},
	},
}
