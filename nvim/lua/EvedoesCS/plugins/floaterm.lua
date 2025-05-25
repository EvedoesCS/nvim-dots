return {
    "voldikss/vim-floaterm",
    config = function()
        vim.keymap.set("n", "<leader>ft", vim.cmd.FloatermNew)
        vim.keymap.set("n", "<leader>ftt", vim.cmd.FloatermToggle)
    end,
}
