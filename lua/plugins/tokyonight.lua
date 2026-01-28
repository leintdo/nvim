return {
  "folke/tokyonight.nvim",
  lazy = true,
  opts = {
    style = "night",
    transparent = false,
    terminal_colors = true,
    styles = {
      -- Text Styles
      comments = { italic = true },
      keywords = {},
      functions = {},
      -- UI styles
      sidebars = "dark",
      floats = "dark",
    },
    dim_inactive = false,
    lualine_bold = false,
    on_highlights = function(highlights, colors)

    end,
  },
}
