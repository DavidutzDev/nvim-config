return {
	"otavioschwanck/arrow.nvim",
	opts = {
		show_icons = true,
		leader_key = ";",
		buffer_leader_key = "m",
	},
	keys = {
		{
			"<leader>a[",
			function()
				require("arrow.persist").previous()
			end,
			desc = "Arrow go to Previous",
		},
		{
			"<leader>a]",
			function()
				require("arrow.persist").next()
			end,
			desc = "Arrow go to Next",
		},
		{
			"<leader>aa",
			function()
				require("arrow.persist").toggle()
			end,
			desc = "Arrow toggle",
		},
	},
}
