return {
	-- Adds softwrap
	{"preservim/vim-pencil"},
	-- Adds a 'Zen-mode' to remove distractions when writing (optinal)
	{"folke/zen-mode.nvim"},
	-- A large list of autocorrecting words
	{"panozzaj/vim-autocorrect"},
	-- A smartphone-keyboard-like agressive autocorrect
	{"sedm0784/vim-you-autocorrect"},

	-- Narrow mode that makes it so only nearby code/text is vissible, pairs with zen mode
	{
		"Pocco81/true-zen.nvim",
		config = function()
			 require("true-zen").setup {
			 }
		end,
	},

	{"folke/twilight.nvim", opts = {
		context = 5,
	}},
}
