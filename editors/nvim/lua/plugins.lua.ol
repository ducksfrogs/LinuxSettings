
vim.cmd [[packadd packer.nvim ]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use {
	'neoclide/coc.nvim', branch = 'release'
	}

    use 'rstacruz/vim-closer'

    use {
    "williamboman/mason.nvim"
    }

    use {
        'ayu-theme/ayu-vim'
    }
    use { "arcticicestudio/nord-vim", opt = true }

end)
