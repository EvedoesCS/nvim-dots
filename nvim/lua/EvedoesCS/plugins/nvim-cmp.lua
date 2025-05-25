return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
        "hrsh7th/cmp-buffer",  -- Source for text in Buffer
        "hrsh7th/cmp-path",    -- Source for file system paths
        "L3MON4D3/LuaSnip",     -- Snippet engine
        "saadparwaiz1/cmp_luasnip", -- for autocompletion
        "rafamadriz/friendly-snippets", -- useful snippets
    },
    config = function()
        local cmp = require("cmp")

        local luasnip = require("luasnip")

        -- loads vscode style snippets from installed plugins
        require("luasnip.loaders.from_vscode").lazy_load()

        cmp.setup({
            completion = {
                completeopt = "menu,menuone,preview,noselect",
            },
            snippet = { -- configure how nvim-cmp interacts with snippet engine
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
            ["<C-k>"] = cmp.mapping.select_prev_item(),
            ["<C-j>"] = cmp.mapping.select_next_item(),
            ["<C-Space>"] = cmp.mapping.complete(), -- Show mapping suggestions
            ["<C-e>"] = cmp.mapping.abort(), -- Close completion window
            ["<CR>"] = cmp.mapping.confirm({select = false}), 
            }),
            -- Sources for nvim-cmp
            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "luasnip" }, -- snippets
                { name = "buffer" },  -- text within current buffer 
                { name = "path" },    -- file system paths
            }),
        })
    end,
}
