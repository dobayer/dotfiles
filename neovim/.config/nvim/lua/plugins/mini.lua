return {
    {
        "echasnovski/mini.nvim",
        config = function()
            require("mini.ai").setup()
            require("mini.surround").setup()
            require("mini.pairs").setup()
            require("mini.extra").setup()
            require("mini.animate").setup()
            require("mini.basics").setup()
            require("mini.clue").setup()

            --require("mini.statusline").setup()
        end,
    },
}
