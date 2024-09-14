return {
	{ "wbthomason/packer.nvim" },
	{ "windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end },
	{ "nvim-lua/plenary.nvim" },
	{ "akinsho/toggleterm.nvim" },
	{ "lukas-reineke/indent-blankline.nvim" },
	{ "kyazdani42/nvim-tree.lua" },
	{ "nvim-tree/nvim-web-devicons" },

	-- colorschemes
	{ "rebelot/kanagawa.nvim" },
	{ "altercation/vim-colors-solarized" },
	-- use({ "bluz71/vim-moonfly-colors" })
	-- use({ "rockerBOO/boo-colorscheme-nvim" })
	-- use({ "projekt0n/github-nvim-theme" })
	-- use({ "tek256/simple-dark", commit = "25e328e8de334be93743c865f9188aeffbe6bd4d" })

	{
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		setup = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},

	{
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
	build = "make install_jsregexp"
},

	{"hrsh7th/nvim-cmp"},
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-nvim-lua" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/cmp-cmdline" },
	{ "hrsh7th/vim-vsnip" },
	{ "hrsh7th/cmp-vsnip" },
	{ "hrsh7th/vim-vsnip-integ" },
	{ "f3fora/cmp-spell"},
	{ "hrsh7th/cmp-calc" },
	{ "hrsh7th/cmp-emoji" },
	
	{ "rafamadriz/friendly-snippets" }, 
	{ "neovim/nvim-lspconfig" }, 
	{ "williamboman/mason.nvim" }, 
	{ "williamboman/mason-lspconfig.nvim" }, 
	{ "jose-elias-alvarez/null-ls.nvim" }, 

	{"ervandew/supertab"},
	{"vim-autoformat/vim-autoformat"},
	{"hrsh7th/nvim-compe"},

	{"sheerun/vim-polyglot"},
	{"evanleck/vim-svelte"},
	{"leafOfTree/vim-svelte-plugin"},

	-- Telescope
	{"nvim-telescope/telescope.nvim"},
	{"nvim-treesitter/nvim-treesitter"},

	{"ibhagwan/fzf-lua"},
	{"ggandor/leap.nvim"},

	{
		"nvim-lualine/lualine.nvim",
		requires = {
			"nvim-tree/nvim-web-devicons",
		},
	},

	{
		'https://github.com/j-hui/fidget.nvim',
		tag = 'legacy',
		config = function()
			require("fidget").setup { -- option here
			}
		end,
	},

	{
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	},

	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},
			{'neovim/nvim-lspconfig'},
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
		},
	},

	{"simrat39/rust-tools.nvim"},
	{"ellisonleao/glow.nvim", config = function() require("glow").setup() end},

	{
		"Pocco81/true-zen.nvim",
		config = function()
			 require("true-zen").setup {
			 }
		end,
	}, 

	{"preservim/vim-pencil"},
	{"folke/zen-mode.nvim"},
	{"tpope/vim-surround"},
	{"panozzaj/vim-autocorrect"},
	{"sedm0784/vim-you-autocorrect"},
	{'habamax/vim-godot'},
}
