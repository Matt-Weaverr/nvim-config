return {
    {
    "mason-org/mason.nvim",
    config = function()
        require("mason").setup()
    end
    },
    {
    "williamboman/mason-lspconfig.nvim",
    config = function()
        require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls", "gopls" }
    })
    end
    },
    {
    "neovim/nvim-lspconfig",
    config = function()
        vim.lsp.enable('gopls')
        vim.lsp.enable('lua_ls')
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
    end
    },
}
