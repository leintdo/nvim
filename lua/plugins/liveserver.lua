return{
	"barrettruth/live-server.nvim",
	build = "npm i -g live-server",
	cmd = { "LiveServerStart", "LiveServerStop" },
  config = true,
  keys = {
    {
      "<leader>ks",
      "<cmd>LiveServerStart<cr>",
      desc = "Start Live Server",
    },
    {
      "<leader>kS",
      "<cmd>LiveServerStop<cr>",
      desc = "Stop Live Server",
    },
  },
}
