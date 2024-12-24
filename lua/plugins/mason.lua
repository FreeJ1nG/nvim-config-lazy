return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        require("mason").setup()

        require("mason-lspconfig").setup({
            automatic_installation = true,
            ensure_installed = {
                "ts_ls",
                "cssls",
                "eslint",
                "html",
                "jsonls",
                "pyright",
                "tailwindcss",
            },
        })

        require("mason-tool-installer").setup({
            ensure_installed = {
                "prettierd",
                "stylua", -- lua formatter
                "isort", -- python formatter
                "black", -- python formatter
                "pylint",
                "eslint_d",
            },
        })
    end,
}