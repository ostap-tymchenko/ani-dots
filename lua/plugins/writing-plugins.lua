return {
	{"preservim/vim-pencil"},
	{"folke/zen-mode.nvim"},
	{"panozzaj/vim-autocorrect"},
	{"sedm0784/vim-you-autocorrect"},

	{
		"Pocco81/true-zen.nvim",
		config = function()
			 require("true-zen").setup {
			 }
		end,
	}, 

}
