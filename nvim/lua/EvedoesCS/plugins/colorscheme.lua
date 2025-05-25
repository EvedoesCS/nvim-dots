return {
    -- Color Scheme NVIM
    {
        "Mofiqul/vscode.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            -- load color scheme 
            vim.cmd([[colorscheme vscode]])

            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
            vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
            vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
            vim.api.nvim_set_hl(0, "CursorLine", { bg ="none" })
        end,
    },
}
