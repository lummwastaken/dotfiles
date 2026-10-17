require("paq") {
	"savq/paq-nvim",

	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate"
	},

	-- snippet engine
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	"honza/vim-snippets",

	-- completion
	"neovim/nvim-lspconfig",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"hrsh7th/nvim-cmp",
	"hrsh7th/vim-vsnip",
	"ray-x/lsp_signature.nvim",
	"hedyhli/outline.nvim",

	-- debugging
	"mfussenegger/nvim-dap",

	-- tags
	"preservim/tagbar",

	-- commands
	"windwp/nvim-autopairs",
	"junegunn/fzf",
	"junegunn/fzf.vim",
	"tpope/vim-commentary",
	"tpope/vim-surround",
	"tpope/vim-dispatch",
	"tpope/vim-fugitive",
	"tpope/vim-abolish",
	"preservim/vimux",
	"easymotion/vim-easymotion",

	-- appearance
	"morhetz/gruvbox",
	"nvim-lualine/lualine.nvim",
	"kyazdani42/nvim-web-devicons",
	"luochen1990/rainbow",
	"ntpeters/vim-better-whitespace",
	"RRethy/vim-illuminate",
	"lewis6991/gitsigns.nvim",
}
