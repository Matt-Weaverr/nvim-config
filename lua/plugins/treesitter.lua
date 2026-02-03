return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require('nvim-treesitter').install({'lua', 'go', 'javascript', 'php', 'python', 'c', 'html', 'css'})
        vim.api.nvim_create_autocmd('FileType', {
            pattern = { 'lua' },
            callback = function() vim.treesitter.start() end,
        })
        vim.api.nvim_create_autocmd('FileType', {
            pattern = { 'go' },
            callback = function() vim.treesitter.start() end,
        })
        vim.api.nvim_create_autocmd('FileType', {
            pattern = { 'javascript' },
            callback = function() vim.treesitter.start() end,
        })
        vim.api.nvim_create_autocmd('FileType', {
            pattern = { 'php' },
            callback = function() vim.treesitter.start() end,
        })
        vim.api.nvim_create_autocmd('FileType', {
            pattern = { 'python' },
            callback = function() vim.treesitter.start() end,
        })
        vim.api.nvim_create_autocmd('FileType', {
            pattern = { 'c' },
            callback = function() vim.treesitter.start() end,
        })
        vim.api.nvim_create_autocmd('FileType', {
            pattern = { 'html' },
            callback = function() vim.treesitter.start() end,
        })
        vim.api.nvim_create_autocmd('FileType', {
            pattern = { 'css' },
            callback = function() vim.treesitter.start() end,
        })
    end,
}
