require('lazydev').setup({
	library = {
		{ path = "${3rd}/luv/library", words = { "vim%.uv" }}
	}
})

require('blink.cmp').setup({
	keymap = { preset = 'default' },

	appearance = {
		nerd_font_variant = 'mono'
	},
	completion = { documentation = { auto_show = true } },

	sources = {
		default = { 'lazydev', 'lsp', 'path', 'snippets', 'buffer' },
		providers = {
			lazydev = {
				name = "LazyDev",
				module = "lazydev.integrations.blink",
				score_offset = 100,
			},
		},
	},

	fuzzy = { implementation = "prefer_rust_with_warning" }
})
