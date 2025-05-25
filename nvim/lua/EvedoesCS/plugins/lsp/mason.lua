return {
   "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        -- import mason
        local mason = require("mason")

        -- import mason-lspconfig 
        local mason_lspconfig = require("mason-lspconfig")



        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗" 
                }
            }
        })

        mason_lspconfig.setup({
            -- list of servers to install
            ensure_installed = {
                "html",
                "cssls",
                "tailwindcss",
                "gopls",
                "lua_ls",
                "pyright",
                "emmet_ls",
            },

            -- auto-install configured servers with lspconfig
            automatic_installation = true, -- different from ensure_installed

        })
    end,
}
