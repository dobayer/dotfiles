-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.

require("lazy").setup({
	-- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically

	require("plugins/colorschemes"),

	require("plugins/telescope"),

	require("plugins/whichkey"),

	require("plugins/treesitter"),

	require("plugins/lsp"),

	require("plugins/cmp"),

	require("plugins/conform"),
})
