require("lazydev").setup({
	library = {
		{
			path = "${3rd}/luv/library",
			words = {
				"vim%.uv"
			}
		}
	}
})

require("lspconfig").lua_ls.setup({})
