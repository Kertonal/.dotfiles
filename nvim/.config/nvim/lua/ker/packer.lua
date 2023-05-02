vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use({
		'sainnhe/sonokai',
		as = 'sonokai',
		config = function()
			vim.cmd('colorscheme sonokai')
		end
	})

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	use('theprimeagen/harpoon')

	use('mbbill/undotree')

	use('tpope/vim-fugitive')

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{                                      -- Optional
			'williamboman/mason.nvim',
			run = function()
				pcall(vim.cmd, 'MasonUpdate')
			end,
		},
		{'williamboman/mason-lspconfig.nvim'}, -- Optional

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},     -- Required
		{'hrsh7th/cmp-nvim-lsp'}, -- Required
		{'L3MON4D3/LuaSnip'},     -- Required
	};

    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    });

    use('tpope/vim-unimpaired');

    use('tpope/vim-commentary');

    use('mg979/vim-visual-multi');

	use('machakann/vim-highlightedyank');

    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    };

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    };

    --[[
    use{
        "karb94/neoscroll.nvim",
        config = function()
            require("neoscroll").setup()
        end
    };
    --]]
    
    -- use ( 'saadparwaiz1/cmp_luasnip' );
    
    -- use("rafamadriz/friendly-snippets")
    use("honza/vim-snippets")
}
end)
