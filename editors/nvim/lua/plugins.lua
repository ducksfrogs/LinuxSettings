
vim.cmd [[packadd packer.nvim ]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use {
	'neoclide/coc.nvim', branch = 'release'
	}
end)