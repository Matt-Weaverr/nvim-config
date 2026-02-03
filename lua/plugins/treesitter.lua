return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require('nvim-treesitter').install({'lua', 'go', 'javascript'})
        vim.api.nvim_create_autocmd('FileType', {
            pattern = { 'go' },
            callback = function() vim.treesitter.start() end,
        })
    end,
}
