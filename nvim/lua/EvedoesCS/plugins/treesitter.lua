return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { "c", "lua", "vim", "vimdoc", "typescript", "heex", "javascript", "html" },
            sync_install = false,
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },  
            autotag = {enable = true}
        })
    end,

    run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
    end,
}
