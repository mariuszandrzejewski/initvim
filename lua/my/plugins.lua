return require('packer').startup({function()
    --plugin manager
    use 'wbthomason/packer.nvim'

    use 'shaunsingh/nord.nvim'
end,
config = {
    --floating window
    display = {
        open_fn = function()
            return require('packer.util').float({ border = 'single' })
        end
    }
}})
