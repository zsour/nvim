return {
	{
		"navarasu/onedark.nvim",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			require("onedark").setup({
				style = "darker",
				term_colors = true,
				lualine = { transparent = true },
			})
			-- load the colorscheme here
			require("onedark").load()
		end,
	},
}
