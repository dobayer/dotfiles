return {
    "nvim-tree/nvim-tree.lua",
    config = function()
        require("nvim-tree").setup {
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                width = 30,
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = true,
            },
        }
    end,
    vim.keymap.set("n", "<leader>tt", vim.cmd.NvimTreeToggle, { desc = "Nvim[T]ree [T]oggle" }),
}
